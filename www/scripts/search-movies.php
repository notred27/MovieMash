<?php
header('Content-Type: application/json');
include_once(__DIR__ . '/../db-connect.php');
include_once('./../components/movieBanner.php');


$allowedSorts = [
    'recent' => "ORDER BY release_year DESC",
    'oldest' => "ORDER BY release_year ASC",
    'az' => "ORDER BY title ASC",
    'za' => "ORDER BY title DESC",
    'highest' => "ORDER BY avg_rating DESC",
    'lowest' => "ORDER BY avg_rating ASC"
];

$sort = $_GET['sort'] ?? 'recent';
$order = $allowedSorts[$sort] ?? $allowedSorts['recent'];

$movie_name = isset($_GET['movie_name']) ? trim($_GET['movie_name']) : '';
$release_year = isset($_GET['release_year']) ? (int)$_GET['release_year'] : 0;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 0;


$sql = "SELECT movie.*,
               AVG(review.rating) AS avg_rating
        FROM movie
        LEFT JOIN review ON movie.imdb = review.imdb
        WHERE 1=1";

$params = [];
$types = '';

if ($movie_name) {
    $sql .= " AND title LIKE ?";
    $types .= 's';
    $params[] = "%$movie_name%";
}

if ($release_year) {
    $sql .= " AND release_year = ?";
    $types .= 'i';
    $params[] = $release_year;
}

$sql .= " GROUP BY movie.imdb $order LIMIT 20 OFFSET " . ($page * 20) . ";";

$stmt = $conn->prepare($sql);

if (!$stmt) {
    error_log("SQL error: " . $conn->error);
    exit("Database error.");
}

if (!empty($params)) {
    $stmt->bind_param($types, ...$params);
}

$stmt->execute();
$result = $stmt->get_result();



// Buffer HTML
ob_start();

while ($movie = $result->fetch_assoc()) {
    create_movie_html($movie, $conn);
}

$html = ob_get_clean();



// get full count of reviews for pagination
$sql = "SELECT COUNT(*) as num_results
        FROM movie
        -- LEFT JOIN review ON movie.imdb = review.imdb
        WHERE 1=1";

$params = [];
$types = '';

if ($movie_name) {
    $sql .= " AND title LIKE ?";
    $types .= 's';
    $params[] = "%$movie_name%";
}

if ($release_year) {
    $sql .= " AND release_year = ?";
    $types .= 'i';
    $params[] = $release_year;
}

// $sql .= " GROUP BY movie.imdb;";

$stmt = $conn->prepare($sql);

if (!$stmt) {
    error_log("SQL error: " . $conn->error);
    exit("Database error.");
}

if (!empty($params)) {
    $stmt->bind_param($types, ...$params);
}

$stmt->execute();
$result = $stmt->get_result();
$num_results = $result->fetch_assoc();

echo json_encode(['html' => $html, 'numResults' => $num_results["num_results"] ?? 0]);
?>