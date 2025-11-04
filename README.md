📱 Nama Aplikasi
Tukang.com

🎯 Tujuan Aplikasi
Aplikasi ini dibuat sebagai platform digital untuk menghubungkan pengguna dengan tenaga ahli (tukang) seperti tukang listrik, tukang bangunan, teknisi AC, tukang pipa, dan lain-lain.
Pengguna dapat:

Melihat daftar tukang yang tersedia
Memilih layanan berdasarkan kategori
Melihat riwayat pesanan
Mengelola profil akun
⚠️ Catatan Penting: Sesuai instruksi UKK, aplikasi ini hanya berupa UI Slicing — artinya tidak terhubung ke database atau backend. Semua data bersifat dummy (contoh) dan hanya menampilkan tampilan antarmuka yang mirip dengan desain asli. 

🧩 Fitur Utama Aplikasi
1. Splash Screen
Tampilan pembuka aplikasi
Menampilkan logo (ikon konstruksi), nama "Tukang.com", dan tagline
Otomatis berpindah ke halaman utama setelah 2 detik
2. Halaman Dashboard (Beranda)
Kolom pencarian untuk mencari tukang berdasarkan keahlian
Kategori layanan dalam bentuk chip horizontal (Listrik, Bangunan, AC, Plumbing)
Daftar tukang populer dalam bentuk kartu, menampilkan:
Nama tukang
Kategori
Deskripsi layanan
Harga
Rating dan jumlah ulasan
Tombol "favorit" (ikon hati)
3. Halaman Pesanan
Menampilkan riwayat pemesanan layanan tukang
Setiap pesanan menunjukkan:
Nama layanan
Tanggal pesanan
Status pesanan (contoh: Menunggu Konfirmasi, Selesai, Dibatalkan)
Status diberi warna berbeda untuk memudahkan identifikasi
4. Halaman Akun
Menampilkan profil pengguna (nama, email, foto profil placeholder)
Menu pengaturan dalam bentuk daftar:
Profil Saya
Notifikasi
Metode Pembayaran
Riwayat Pesanan
Pengaturan
Keluar
🛠️ Teknologi yang Digunakan
Bahasa Pemrograman: Dart
Framework: Flutter (Material 3)
Arsitektur: Stateless & Stateful Widgets (sederhana, mudah dipahami siswa SMK)
Data: Data dummy (tidak menggunakan API atau database)
Navigasi: Bottom Navigation Bar untuk berpindah antar halaman utama

lib/
├── Models/            → Berisi class ServicePost (data tukang)
├── Screens/           → Halaman-halaman utama (Splash, Dashboard, Pesanan, Akun)
├── Utils/             → Data dummy (daftar tukang)
├── Widgets/           → Komponen UI reusable (kartu tukang)
└── main.dart          → Titik masuk aplikasi

