document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('.menuContainer').forEach(container => {
        const icon = container.querySelector('.menuIcon');
        const dropdown = container.querySelector('.dropdownMenu');

        icon.addEventListener('click', function (e) {
            e.stopPropagation(); 
            // Toggle visibility
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
        });

        // Close dropdown if clicking outside
        document.addEventListener('click', function () {
            dropdown.style.display = 'none';
        });
    });
});

document.addEventListener('DOMContentLoaded', function () {
    document.addEventListener('click', function (e) {
        if (e.target.classList.contains('menuIcon')) {
            e.stopPropagation();

            // Close all open dropdowns
            document.querySelectorAll('.dropdownMenu').forEach(menu => {
                menu.style.display = 'none';
            });

            // Toggle the clicked one
            const dropdown = e.target.closest('.menuContainer').querySelector('.dropdownMenu');
            if (dropdown) {
                dropdown.style.display = 'block';
            }
        } else {
            document.querySelectorAll('.dropdownMenu').forEach(menu => {
                menu.style.display = 'none';
            });
        }
    });
});

document.addEventListener('click', function (e) {
    if (e.target.classList.contains('deleteBtn')) {
        e.stopPropagation();

        const imdb = e.target.getAttribute('data-imdb');
        const watch = e.target.getAttribute('data-watch');

        const reviewDiv = e.target.closest('.movieReview');

        if (confirm("Are you sure you want to delete this review?")) {
            fetch('./scripts/delete-review.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: `imdb=${encodeURIComponent(imdb)}&watch=${encodeURIComponent(watch)}`
            })
            .then(res => res.text())
            .then(response => {
                if (response.trim() === "Success") {
                    reviewDiv.remove();
                } else {
                    alert("Delete failed: " + response);
                }
            })
            .catch(err => {
                console.error("Error deleting review:", err);
            });
        }
    }
});

document.addEventListener('click', function (e) {
    if (e.target.classList.contains('deletePoll')) {
        e.stopPropagation();

        const poll_id = e.target.getAttribute('data-poll-id');

        const pollDiv = e.target.closest('.PollContainer');

        console.log("here")

        if (confirm("Are you sure you want to delete this poll?")) {
            fetch('./scripts/delete-poll.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: `id=${encodeURIComponent(poll_id)}}`
            })
            .then(res => res.text())
            .then(response => {
                if (response.trim() === "Success") {
                    pollDiv.remove();
                } else {
                    alert("Delete failed: " + response);
                }
            })
            .catch(err => {
                console.error("Error deleting review:", err);
            });
        }
    }
});
