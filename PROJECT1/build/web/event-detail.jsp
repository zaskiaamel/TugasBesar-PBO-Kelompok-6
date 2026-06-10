<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Summer Music Festival - Event Detail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>

    <!-- Hero Image Section -->
    <div class="hero-section">
        <img src="images/event1.jpg" alt="Summer Music Festival">
        <div class="hero-overlay"></div>

        <div class="hero-top-bar">
            <a href="dashboard.jsp" class="btn-circle">
                <i class="bi bi-arrow-left fs-5"></i>
            </a>
            <button class="btn-circle" onclick="shareEvent()">
                <i class="bi bi-share fs-5"></i>
            </button>
        </div>

        <div class="hero-bottom">
            <span class="badge-category">Music</span>
            <h1 class="fw-bold fs-2 mb-0">Summer Music Festival</h1>
        </div>
    </div>

    <!-- Content -->
    <div class="container" style="max-width: 860px; padding: 32px 16px;">

        <!-- Event Details Card -->
        <div class="card-section">
            <h2 class="fw-semibold mb-4">Event Details</h2>

            <div class="d-flex gap-3 mb-4 align-items-start">
                <i class="bi bi-calendar3 detail-icon"></i>
                <div>
                    <p class="fw-medium mb-0 text-dark">June 15, 2026</p>
                    <p class="text-muted mb-0">18:00 - 23:00 WIB</p>
                </div>
            </div>

            <div class="d-flex gap-3 mb-4 align-items-start">
                <i class="bi bi-geo-alt detail-icon"></i>
                <div>
                    <p class="fw-medium mb-0 text-dark">Jakarta Convention Center</p>
                    <p class="text-muted mb-0">Jl. Gatot Subroto, Jakarta Pusat</p>
                </div>
            </div>

            <div class="d-flex gap-3 align-items-start">
                <i class="bi bi-people detail-icon"></i>
                <div>
                    <p class="fw-medium mb-0 text-dark">Capacity</p>
                    <p class="text-muted mb-0">5000 attendees</p>
                </div>
            </div>
        </div>

        <!-- About Event Card -->
        <div class="card-section">
            <h2 class="fw-semibold mb-3">About Event</h2>
            <p class="text-secondary lh-lg mb-4">
                Join us for the biggest summer music festival of the year! Featuring top artists and bands
                from around the world. Get ready for an unforgettable night of music, lights, and entertainment.
            </p>

            <h3 class="fw-semibold mb-3 fs-5">Highlights</h3>
            <ul class="list-unstyled">
                <li class="d-flex gap-2 mb-2 text-secondary">
                    <div class="highlight-dot"></div>
                    <span>Multiple stages with different genres</span>
                </li>
                <li class="d-flex gap-2 mb-2 text-secondary">
                    <div class="highlight-dot"></div>
                    <span>Food and beverage vendors</span>
                </li>
                <li class="d-flex gap-2 mb-2 text-secondary">
                    <div class="highlight-dot"></div>
                    <span>VIP lounge area</span>
                </li>
                <li class="d-flex gap-2 mb-2 text-secondary">
                    <div class="highlight-dot"></div>
                    <span>Photo booth and activities</span>
                </li>
            </ul>
        </div>

        <!-- Booking Footer Card -->
        <div class="card-section d-flex align-items-center justify-content-between flex-wrap gap-3">
            <div>
                <p class="price-label mb-0">Price starts from</p>
                <p class="price-value mb-0">Rp 250.000</p>
            </div>
            <a href="booking.jsp" class="btn-book">
                Book Ticket
            </a>
        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function shareEvent() {
            if (navigator.share) {
                navigator.share({
                    title: 'Summer Music Festival',
                    text: 'Lihat event ini: Summer Music Festival - June 15, 2026',
                    url: window.location.href
                });
            } else {
                navigator.clipboard.writeText(window.location.href);
                alert('Link berhasil disalin!');
            }
        }
    </script>

</body>
</html>
<link rel="stylesheet" href="css/eventdetail.css">
