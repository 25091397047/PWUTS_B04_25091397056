# KantinKita — Bagian Naila

**Proyek UTS Pemrograman Web | Kelompok 4**

## Fitur yang dikerjakan

1. Halaman utama yang responsif untuk desktop dan ponsel.
2. Navigasi antarhalaman menggunakan JavaScript dan Fetch API (Ajax).
3. Riwayat pesanan dengan pencarian nomor pesanan dan filter status.
4. Form pembayaran dengan validasi input sebelum data dikirim.
5. Endpoint PHP untuk mengambil daftar pesanan dan menerima data pembayaran.
6. Database MySQL contoh untuk menguji alur fitur.

## Struktur folder

```text
KantinKita_Naila/
├── index.html
├── style.css
├── script.js
├── database.sql
├── README.md
├── api/
│   ├── pembayaran.php
│   └── pesanan.php
└── pages/
    ├── pembayaran.html
    └── riwayat.html
```

## Cara menjalankan di XAMPP

1. Ekstrak folder proyek.
2. Salin folder `KantinKita_Naila` ke `C:\xampp\htdocs\`.
3. Buka XAMPP Control Panel, lalu jalankan **Apache** dan **MySQL**.
4. Buka `http://localhost/phpmyadmin`.
5. Pilih menu **Import**, lalu pilih file `database.sql` dari folder proyek. Jalankan proses import.
6. Buka `http://localhost/KantinKita_Naila/` di browser.
7. Coba fitur pembayaran dengan data contoh berikut:
   - ID pesanan: `KK-1001`
   - Metode: pilih salah satu
   - Total: `15000`

## Catatan pengujian

- Endpoint PHP dan database perlu dijalankan melalui XAMPP; membuka `index.html` langsung dari File Explorer tidak cukup untuk menguji PHP.
- Data awal dalam database adalah data demonstrasi.
- Transfer bank dan QRIS hanya simulasi; proyek ini tidak memakai payment gateway dan tidak memindahkan uang sungguhan.
- Sesuaikan nama tabel atau kolom jika proposal dan database kelompok memiliki struktur yang berbeda.
