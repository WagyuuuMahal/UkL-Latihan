📱 Laptop Rental App – Uji Kompetensi SMK RPL
<img width="1919" height="1020" alt="Screenshot 2025-11-04 184859" src="https://github.com/user-attachments/assets/6529942b-4e89-4a0e-9019-a28db99cc331" />
Aplikasi Laptop Rental ini dibuat sebagai tugas praktik Uji Kompetensi Keahlian (UKK) untuk kompetensi keahlian Rekayasa Perangkat Lunak (RPL) di SMK, sesuai dengan Paket 2 – Slicing Desain Aplikasi Tukang.com.
Aplikasi ini menampilkan antarmuka modern yang terinspirasi dari desain layanan berbasis pesan jasa (seperti Tukang.com), namun diadaptasi menjadi sistem penyewaan laptop dengan fitur CRUD (Create, Read, Update, Delete) pesanan.

🎯 Fitur Utama
✅ Splash Screen – Tampilan pembuka selama 2 detik
✅ Dashboard (Home) – Daftar laptop yang tersedia untuk disewa
✅ Halaman Pesanan – Menampilkan daftar pesanan aktif dengan opsi Edit (Update) dan Hapus (Delete)
✅ Halaman Akun – Profil pengguna, ringkasan pesanan, pengaturan, dan tombol logout
✅ UI/UX Modern – Menggunakan Material 3 (Material You), kartu responsif, ikon intuitif, dan warna konsisten
✅ Tanpa Backend – Menggunakan state management Provider dan data dummy (mock data)

🛠️ Teknologi yang Digunakan
Bahasa Pemrograman: Dart
Framework: Flutter (versi stabil terbaru)
State Management: provider (v6.x)
Desain: Material 3 (Material You)
Aset: Gambar lokal (disarankan untuk ujian praktik)

📁 Struktur Proyek
lib/
├── main.dart
├── models/
│   ├── laptop.dart
│   └── order.dart
├── providers/
│   └── order_provider.dart
├── screens/
│   ├── splash_screen.dart
│   ├── home_screen.dart
│   ├── order_screen.dart
│   └── account_screen.dart
└── widgets/
    ├── laptop_card.dart
    └── order_item.dart

    📝 Catatan Penting
Aplikasi ini tidak terhubung ke backend — semua data bersifat lokal (state management Provider).
Gambar laptop sebaiknya menggunakan aset lokal (assets/) agar tidak error saat ujian (menghindari error HTTP request failed).
Desain mengikuti pedoman UKK Paket 2 SMK Telkom Malang dengan adaptasi tema "Penyewaan Laptop".

profile
Qwen3-Max
6:50 pm
Berikut adalah contoh file README.md yang profesional dan sesuai dengan konteks Uji Kompetensi SMK Rekayasa Perangkat Lunak (Android) berdasarkan dokumen soal PAKET 2 – Slicing Aplikasi Tukang.com menggunakan Flutter:

📱 Laptop Rental App – Uji Kompetensi SMK RPL
Flutter

Dart

License

Aplikasi Laptop Rental ini dibuat sebagai tugas praktik Uji Kompetensi Keahlian (UKK) untuk kompetensi keahlian Rekayasa Perangkat Lunak (RPL) di SMK, sesuai dengan Paket 2 – Slicing Desain Aplikasi Tukang.com.
Aplikasi ini menampilkan antarmuka modern yang terinspirasi dari desain layanan berbasis pesan jasa (seperti Tukang.com), namun diadaptasi menjadi sistem penyewaan laptop dengan fitur CRUD (Create, Read, Update, Delete) pesanan.

🎯 Fitur Utama
✅ Splash Screen – Tampilan pembuka selama 2 detik
✅ Dashboard (Home) – Daftar laptop yang tersedia untuk disewa
✅ Halaman Pesanan – Menampilkan daftar pesanan aktif dengan opsi Edit (Update) dan Hapus (Delete)
✅ Halaman Akun – Profil pengguna, ringkasan pesanan, pengaturan, dan tombol logout
✅ UI/UX Modern – Menggunakan Material 3 (Material You), kartu responsif, ikon intuitif, dan warna konsisten
✅ Tanpa Backend – Menggunakan state management Provider dan data dummy (mock data)
📸 Preview Tampilan
Splash
Home
Order
Account

Catatan: Gambar di atas hanya ilustrasi. Tampilan sebenarnya mengikuti desain soal UKK Paket 2 (Tukang.com style). 

🛠️ Teknologi yang Digunakan
Bahasa Pemrograman: Dart
Framework: Flutter (versi stabil terbaru)
State Management: provider (v6.x)
Desain: Material 3 (Material You)
Aset: Gambar lokal (disarankan untuk ujian praktik)
📦 Cara Menjalankan Aplikasi
Prasyarat
Flutter SDK terinstal (flutter.dev )
Android Studio / VS Code
Perangkat Android / Emulator
Langkah-langkah
Clone repositori ini:
bash


1
2
git clone https://github.com/namaanda/laptop-rental-ukk.git
cd laptop-rental-ukk
Install dependensi:
bash


1
flutter pub get
Jalankan aplikasi:
bash


1
flutter run
(Opsional) Build APK:
bash


1
flutter build apk --release
📁 Struktur Proyek


1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
lib/
├── main.dart
├── models/
│   ├── laptop.dart
│   └── order.dart
├── providers/
│   └── order_provider.dart
├── screens/
│   ├── splash_screen.dart
│   ├── home_screen.dart
│   ├── order_screen.dart
│   └── account_screen.dart
└── widgets/
    ├── laptop_card.dart
    └── order_item.dart
📝 Catatan Penting
Aplikasi ini tidak terhubung ke backend — semua data bersifat lokal (state management Provider).
Gambar laptop sebaiknya menggunakan aset lokal (assets/) agar tidak error saat ujian (menghindari error HTTP request failed).
Desain mengikuti pedoman UKK Paket 2 SMK Telkom Malang dengan adaptasi tema "Penyewaan Laptop".

📄 Lisensi
 Bebas digunakan untuk keperluan edukasi dan pembelajaran.

 🙏 Penutup
Aplikasi ini dibuat sebagai bentuk pemenuhan tugas Uji Kompetensi Keahlian (UKK) bidang Rekayasa Perangkat Lunak.
Semoga bermanfaat dan bisa menjadi referensi bagi siswa SMK lainnya!

Dibuat dengan ❤️ oleh WAHYU RAVI ANGGORO
Kelas: XII RPL 7 — SMK Nama Sekolah SMK Telkom Malang 
