<?php 
// Takes in a rating and generates HTML to represent the score in terms of stars (using images).

function generate_stars($rating) {
    $rating = (float)$rating;

    $fullStars = floor($rating / 2);
    $hasHalf = fmod($rating, 2) != 0;

    $html = '<span style="display:flex;flex-direction:row;">';

    for ($i = 1; $i <= 5; $i++) {
        if ($i <= $fullStars) {
            $html .= '<img src="./assets/l-star.png" style="height:16px;"><img src="./assets/r-star.png" style="height:16px;">';
        } elseif ($i == $fullStars + 1 && $hasHalf) {
            $html .= '<img src="./assets/l-star.png" style="height:16px;"><img src="./assets/r-hollow.png" style="height:16px;">';
        } else {
            $html .= '<img src="./assets/l-hollow.png" style="height:16px;"><img src="./assets/r-hollow.png" style="height:16px;">';
        }
    }

    return $html . '</span>';
}


?>