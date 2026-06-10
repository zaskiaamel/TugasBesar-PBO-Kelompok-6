<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Tickets</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="css/myticket.css">
</head>
<body>

    <!-- QR Code Modal -->
    <div class="modal-overlay" id="qrModal" onclick="closeModal(event)">
        <div class="modal-card" onclick="event.stopPropagation()">
            <h3 class="fw-semibold text-dark mb-1 fs-4">Your Ticket</h3>
            <p class="text-muted mb-4" id="modalEventTitle">Summer Music Festival</p>

            <div class="qr-box">
                <div class="qr-inner">
                    <!-- QR Code placeholder pakai SVG grid sederhana -->
                    <svg width="160" height="160" viewBox="0 0 160 160" xmlns="http://www.w3.org/2000/svg">
                        <!-- Top-left finder pattern -->
                        <rect x="10" y="10" width="50" height="50" rx="4" fill="#1f2937"/>
                        <rect x="20" y="20" width="30" height="30" rx="2" fill="white"/>
                        <rect x="28" y="28" width="14" height="14" rx="1" fill="#1f2937"/>
                        <!-- Top-right finder pattern -->
                        <rect x="100" y="10" width="50" height="50" rx="4" fill="#1f2937"/>
                        <rect x="110" y="20" width="30" height="30" rx="2" fill="white"/>
                        <rect x="118" y="28" width="14" height="14" rx="1" fill="#1f2937"/>
                        <!-- Bottom-left finder pattern -->
                        <rect x="10" y="100" width="50" height="50" rx="4" fill="#1f2937"/>
                        <rect x="20" y="110" width="30" height="30" rx="2" fill="white"/>
                        <rect x="28" y="118" width="14" height="14" rx="1" fill="#1f2937"/>
                        <!-- Data modules (static pattern) -->
                        <rect x="70" y="10" width="8" height="8" fill="#1f2937"/>
                        <rect x="82" y="10" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="22" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="46" width="8" height="8" fill="#1f2937"/>
                        <rect x="82" y="34" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="70" width="8" height="8" fill="#1f2937"/>
                        <rect x="82" y="70" width="8" height="8" fill="#1f2937"/>
                        <rect x="94" y="70" width="8" height="8" fill="#1f2937"/>
                        <rect x="106" y="70" width="8" height="8" fill="#1f2937"/>
                        <rect x="118" y="70" width="8" height="8" fill="#1f2937"/>
                        <rect x="130" y="70" width="8" height="8" fill="#1f2937"/>
                        <rect x="142" y="70" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="82" width="8" height="8" fill="#1f2937"/>
                        <rect x="94" y="82" width="8" height="8" fill="#1f2937"/>
                        <rect x="118" y="82" width="8" height="8" fill="#1f2937"/>
                        <rect x="142" y="82" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="94" width="8" height="8" fill="#1f2937"/>
                        <rect x="82" y="94" width="8" height="8" fill="#1f2937"/>
                        <rect x="106" y="94" width="8" height="8" fill="#1f2937"/>
                        <rect x="130" y="94" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="106" width="8" height="8" fill="#1f2937"/>
                        <rect x="94" y="106" width="8" height="8" fill="#1f2937"/>
                        <rect x="118" y="106" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="118" width="8" height="8" fill="#1f2937"/>
                        <rect x="82" y="118" width="8" height="8" fill="#1f2937"/>
                        <rect x="94" y="118" width="8" height="8" fill="#1f2937"/>
                        <rect x="106" y="118" width="8" height="8" fill="#1f2937"/>
                        <rect x="130" y="118" width="8" height="8" fill="#1f2937"/>
                        <rect x="142" y="118" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="130" width="8" height="8" fill="#1f2937"/>
                        <rect x="94" y="130" width="8" height="8" fill="#1f2937"/>
                        <rect x="118" y="130" width="8" height="8" fill="#1f2937"/>
                        <rect x="142" y="130" width="8" height="8" fill="#1f2937"/>
                        <rect x="70" y="142" width="8" height="8" fill="#1f2937"/>
                        <rect x="82" y="142" width="8" height="8" fill="#1f2937"/>
                        <rect x="106" y="142" width="8" height="8" fill="#1f2937"/>
                        <rect x="130" y="142" width="8" height="8" fill="#1f2937"/>
                    </svg>
                </div>
            </div>

            <div class="mb-4">
                <p class="text-muted small mb-1">Ticket Number</p>
                <p class="fw-semibold text-dark font-monospace" id="modalTicketNumber">SMFV-2026-001234</p>
            </div>

            <button class="btn-close-modal" onclick="document.getElementById('qrModal').classList.remove('show')">
                Close
            </button>
        </div>
    </div>

    <!-- Header -->
    <header class="top-header">
        <div class="container d-flex align-items-center gap-3 py-3" style="max-width: 860px;">
            <button class="btn-back" onclick="window.location.href='dashboard.jsp'">
                <i class="bi bi-arrow-left fs-5"></i>
            </button>
            <h1 class="mb-0 fs-5 fw-semibold text-dark">My Tickets</h1>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container py-4" style="max-width: 860px;">

        <!-- Ticket 1: Summer Music Festival -->
        <div class="ticket-card">
            <div class="ticket-inner">
                <div class="ticket-image-wrap">
                    <img
                        src="https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=400"
                        alt="Summer Music Festival"
                        class="ticket-image"
                        onerror="this.src='https://placehold.co/192x192?text=Event'"
                    >
                </div>
                <div class="p-4 flex-grow-1">
                    <div class="d-flex align-items-start justify-content-between mb-3 flex-wrap gap-2">
                        <div>
                            <h3 class="fs-5 fw-semibold text-dark mb-2">Summer Music Festival</h3>
                            <span class="badge-type">VIP</span>
                        </div>
                        <span class="badge-status">Active</span>
                    </div>

                    <div class="mb-3">
                        <div class="d-flex align-items-center gap-2 text-muted mb-1">
                            <i class="bi bi-calendar3 detail-icon"></i>
                            <span class="small">June 15, 2026 at 18:00 WIB</span>
                        </div>
                        <div class="d-flex align-items-center gap-2 text-muted mb-1">
                            <i class="bi bi-geo-alt detail-icon"></i>
                            <span class="small">Jakarta Convention Center</span>
                        </div>
                        <div class="d-flex align-items-center gap-2 text-muted">
                            <i class="bi bi-ticket detail-icon"></i>
                            <span class="small font-monospace">SMFV-2026-001234</span>
                        </div>
                    </div>

                    <div class="d-flex gap-2 flex-wrap">
                        <button class="btn-outline-action" onclick="showQR('Summer Music Festival', 'SMFV-2026-001234')">
                            <i class="bi bi-qr-code"></i>
                            Show QR Code
                        </button>
                        <button class="btn-outline-action">
                            <i class="bi bi-download"></i>
                            Download
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Ticket 2: Jazz Night Live -->
        <div class="ticket-card">
            <div class="ticket-inner">
                <div class="ticket-image-wrap">
                    <img
                        src="https://images.unsplash.com/photo-1563841930606-67e2bce48b78?w=400"
                        alt="Jazz Night Live"
                        class="ticket-image"
                        onerror="this.src='https://placehold.co/192x192?text=Event'"
                    >
                </div>
                <div class="p-4 flex-grow-1">
                    <div class="d-flex align-items-start justify-content-between mb-3 flex-wrap gap-2">
                        <div>
                            <h3 class="fs-5 fw-semibold text-dark mb-2">Jazz Night Live</h3>
                            <span class="badge-type">Regular</span>
                        </div>
                        <span class="badge-status">Active</span>
                    </div>

                    <div class="mb-3">
                        <div class="d-flex align-items-center gap-2 text-muted mb-1">
                            <i class="bi bi-calendar3 detail-icon"></i>
                            <span class="small">June 20, 2026 at 19:00 WIB</span>
                        </div>
                        <div class="d-flex align-items-center gap-2 text-muted mb-1">
                            <i class="bi bi-geo-alt detail-icon"></i>
                            <span class="small">Balai Sarbini</span>
                        </div>
                        <div class="d-flex align-items-center gap-2 text-muted">
                            <i class="bi bi-ticket detail-icon"></i>
                            <span class="small font-monospace">JNL-2026-005678</span>
                        </div>
                    </div>

                    <div class="d-flex gap-2 flex-wrap">
                        <button class="btn-outline-action" onclick="showQR('Jazz Night Live', 'JNL-2026-005678')">
                            <i class="bi bi-qr-code"></i>
                            Show QR Code
                        </button>
                        <button class="btn-outline-action">
                            <i class="bi bi-download"></i>
                            Download
                        </button>
                    </div>
                </div>
            </div>
        </div>

    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function showQR(eventTitle, ticketNumber) {
            document.getElementById('modalEventTitle').textContent = eventTitle;
            document.getElementById('modalTicketNumber').textContent = ticketNumber;
            document.getElementById('qrModal').classList.add('show');
        }

        function closeModal(e) {
            if (e.target === document.getElementById('qrModal')) {
                document.getElementById('qrModal').classList.remove('show');
            }
        }
    </script>

</body>
</html>
