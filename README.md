<div align="center">
  <img src="assets/logo.png" alt="Eventify Logo" width="250">

# Eventify

### Event Management & Ticketing System

Platform berbasis web untuk mengelola event, pemesanan tiket, pembayaran, dan pembuatan tiket digital secara terintegrasi.

*Proyek Tugas Besar Pemrograman Berorientasi Objek (CAK2KAB4)*  
*Fakultas Informatika, Universitas Telkom (2025)*

</div>

---

## 📖 Latar Belakang

Eventify merupakan aplikasi manajemen event dan pemesanan tiket berbasis web yang dikembangkan untuk membantu proses pengelolaan event secara digital. Sistem ini memungkinkan penyelenggara untuk mengelola event, tiket, dan peserta dengan lebih efisien dibandingkan metode manual.

Aplikasi dibangun menggunakan konsep **Object-Oriented Programming (OOP)** dengan teknologi **Java Servlet**, **JSP**, dan **MySQL** sebagai database utama.

---

## ✨ Fitur Utama

### 👤 Authentication
- Login pengguna
- Registrasi akun participant
- Logout sistem
- Role-based access (Admin & Participant)

### 🎫 Event Management
- Create Event
- Read Event
- Update Event
- Delete Event
- Kelola jenis tiket dan kuota event

### 📅 Event Discovery
- Melihat daftar event
- Detail informasi event
- Informasi lokasi, tanggal, kategori, dan kapasitas

### 🛒 Ticket Booking
- Pemesanan tiket event
- Pemilihan jenis tiket
- Validasi ketersediaan kuota
- Riwayat pemesanan

### 💳 Payment System
- Credit Card Payment
- E-Wallet Payment
- Bank Transfer Payment

### 🎟 Digital Ticket
- Generate tiket otomatis
- Kode tiket unik
- Riwayat tiket peserta
- Status tiket aktif

---

## 💻 Teknologi yang Digunakan

| Teknologi | Kegunaan |
|------------|-----------|
| Java | Bahasa Pemrograman |
| JSP | Tampilan Web |
| Servlet | Backend Logic |
| MySQL | Database |
| JDBC | Koneksi Database |
| Apache Tomcat | Web Server |
| HTML/CSS | User Interface |

---

## 🧩 Implementasi Object-Oriented Programming

### 🔒 Encapsulation
Data penting seperti informasi pengguna, event, booking, dan pembayaran disimpan menggunakan atribut private serta diakses melalui getter dan setter.

### 🧬 Inheritance
Class `Admin` dan `Participant` mewarisi atribut serta method dari abstract class `User`.

### 🎭 Polymorphism
Metode pembayaran memiliki implementasi berbeda melalui:
- CreditCardPayment
- EWalletPayment
- BankTransferPayment

### 🏗 Abstraction
Abstract class `User` digunakan sebagai dasar seluruh jenis pengguna dalam sistem.

### 🔌 Interface
Interface `PaymentMethod` digunakan untuk mendukung berbagai metode pembayaran yang fleksibel.

---

## 🗄 Database Structure

Database **eventify** terdiri dari beberapa tabel utama:

- Users
- Events
- Ticket Types
- Bookings
- Payments
- Tickets

Relasi database mendukung proses:
- Registrasi pengguna
- Manajemen event
- Pemesanan tiket
- Pembayaran
- Pembuatan tiket digital

---

## 🚀 Cara Menjalankan Project

### 1. Clone Repository

```bash
git clone https://github.com/username/eventify.git
```

### 2. Buat Database

```sql
CREATE DATABASE eventify;
USE eventify;
```

### 3. Import Database

Import file SQL yang tersedia pada folder database.

### 4. Konfigurasi Database

Sesuaikan konfigurasi JDBC:

```java
String url = "jdbc:mysql://localhost:3306/eventify";
String username = "root";
String password = "password";
```

### 5. Jalankan Apache Tomcat

Deploy project ke Apache Tomcat kemudian akses:

```text
http://localhost:8080/Eventify
```

---

## 📂 Struktur Project

```text
Eventify/
│
├── src/
│   ├── model/
│   ├── dao/
│   ├── servlet/
│   └── util/
│
├── web/
│   ├── jsp/
│   ├── css/
│   ├── js/
│   └── images/
│
├── database/
│   └── eventify.sql
│
└── README.md
```

---

## 🔮 Pengembangan Selanjutnya

- Integrasi Payment Gateway (Midtrans/Xendit)
- QR Code Ticket Verification
- Email & WhatsApp Notification
- JWT Authentication
- Password Encryption (BCrypt)
- Mobile App Version (Flutter)

---

<div align="center">

## 👥 Tim Pengembang

| Nama | NIM |
|--------|--------|
| A Muh Faried | 103012300060 |
| Made Ayu Canakya Wiguna Giri | 103012300161 |
| Zaskia Amelia Nurudin | 103012400290 |
| Ghaisan Hanifah Siregar | 103012400322 |
| Rizaldi Maulana Saputra | 103012430013 |
| M. Dzaki Dima Khalith | 103012400422 |

**© 2025 Eventify Team**

</div>
