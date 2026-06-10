<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Tickets - Summer Music Festival</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>

    <!-- Header -->
    <header class="top-header">
        <div class="container d-flex align-items-center gap-3 py-3" style="max-width: 860px;">
            <button class="btn-back" onclick="history.back()">
                <i class="bi bi-arrow-left fs-5"></i>
            </button>
            <h1 class="mb-0 fs-5 fw-semibold text-dark">Book Tickets</h1>
        </div>
    </header>

    <!-- Main Content -->
    <main class="container py-4" style="max-width: 860px;">

        <!-- Event Info + Ticket Selection Card -->
        <div class="card-section">

            <!-- Event Info -->
            <div class="d-flex gap-3 mb-4">
                <img
                    src="https://images.unsplash.com/photo-1459749411175-04bf5292ceea?w=200"
                    alt="Summer Music Festival"
                    class="event-thumbnail"
                    onerror="this.src='https://placehold.co/96x96?text=Event'"
                >
                <div>
                    <h2 class="fs-5 fw-semibold text-dark mb-2">Summer Music Festival</h2>
                    <div class="d-flex align-items-center gap-2 text-muted small mb-1">
                        <i class="bi bi-calendar3"></i>
                        <span>June 15, 2026</span>
                    </div>
                    <div class="d-flex align-items-center gap-2 text-muted small">
                        <i class="bi bi-geo-alt"></i>
                        <span>Jakarta Convention Center</span>
                    </div>
                </div>
            </div>

            <hr>

            <!-- Ticket Selection -->
            <h3 class="fs-6 fw-semibold text-dark mb-3 mt-3">Select Tickets</h3>

            <!-- Regular -->
            <div class="ticket-row d-flex align-items-center justify-content-between">
                <div>
                    <p class="ticket-name mb-0">Regular</p>
                    <p class="ticket-price mb-0">Rp 250.000</p>
                </div>
                <div class="d-flex align-items-center gap-2">
                    <button class="btn-counter btn-minus" onclick="decrement(1)" id="minus-1" disabled>
                        <i class="bi bi-dash"></i>
                    </button>
                    <span class="counter-value" id="count-1">0</span>
                    <button class="btn-counter btn-plus" onclick="increment(1, 250000)">
                        <i class="bi bi-plus"></i>
                    </button>
                </div>
            </div>

            <!-- VIP -->
            <div class="ticket-row d-flex align-items-center justify-content-between">
                <div>
                    <p class="ticket-name mb-0">VIP</p>
                    <p class="ticket-price mb-0">Rp 500.000</p>
                </div>
                <div class="d-flex align-items-center gap-2">
                    <button class="btn-counter btn-minus" onclick="decrement(2)" id="minus-2" disabled>
                        <i class="bi bi-dash"></i>
                    </button>
                    <span class="counter-value" id="count-2">0</span>
                    <button class="btn-counter btn-plus" onclick="increment(2, 500000)">
                        <i class="bi bi-plus"></i>
                    </button>
                </div>
            </div>

            <!-- VVIP -->
            <div class="ticket-row d-flex align-items-center justify-content-between">
                <div>
                    <p class="ticket-name mb-0">VVIP</p>
                    <p class="ticket-price mb-0">Rp 1.000.000</p>
                </div>
                <div class="d-flex align-items-center gap-2">
                    <button class="btn-counter btn-minus" onclick="decrement(3)" id="minus-3" disabled>
                        <i class="bi bi-dash"></i>
                    </button>
                    <span class="counter-value" id="count-3">0</span>
                    <button class="btn-counter btn-plus" onclick="increment(3, 1000000)">
                        <i class="bi bi-plus"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Total & Proceed Card -->
        <div class="card-section d-flex align-items-center justify-content-between flex-wrap gap-3">
            <div>
                <p class="total-label mb-0" id="total-label">Total (0 tickets)</p>
                <p class="total-value mb-0" id="total-value">Rp 0</p>
            </div>
            <button class="btn-proceed" id="btn-proceed" disabled onclick="goToPayment()">
                Proceed to Payment
            </button>
        </div>

    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const tickets = { 1: 0, 2: 0, 3: 0 };
        const prices  = { 1: 250000, 2: 500000, 3: 1000000 };

        function increment(id, price) {
            tickets[id]++;
            updateUI(id);
        }

        function decrement(id) {
            if (tickets[id] > 0) {
                tickets[id]--;
                updateUI(id);
            }
        }

        function updateUI(id) {
            document.getElementById('count-' + id).textContent = tickets[id];
            document.getElementById('minus-' + id).disabled = tickets[id] === 0;

            const totalTickets = Object.values(tickets).reduce((a, b) => a + b, 0);
            const totalPrice   = Object.entries(tickets).reduce((sum, [k, v]) => sum + prices[k] * v, 0);

            document.getElementById('total-label').textContent =
                'Total (' + totalTickets + ' ticket' + (totalTickets !== 1 ? 's' : '') + ')';
            document.getElementById('total-value').textContent =
                'Rp ' + totalPrice.toLocaleString('id-ID');
            document.getElementById('btn-proceed').disabled = totalTickets === 0;
        }

        function goToPayment() {
            window.location.href = 'payment.jsp';
        }
    </script>
<link rel="stylesheet" href="css/booking.css">
</body>
</html>

