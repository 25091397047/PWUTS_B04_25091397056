CREATE DATABASE IF NOT EXISTS kantinkita
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE kantinkita;

-- Tabel minimum untuk menguji fitur Naila.
-- Struktur dapat diselaraskan lagi dengan tabel lengkap pada proposal kelompok.
CREATE TABLE IF NOT EXISTS pesanan (
  id_pesanan VARCHAR(20) PRIMARY KEY,
  tanggal_pesanan DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  total_harga INT UNSIGNED NOT NULL,
  status_pesanan ENUM('Menunggu','Sedang Diproses','Siap Diambil','Selesai','Dibatalkan') NOT NULL DEFAULT 'Menunggu'
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS pembayaran (
  id_pembayaran INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_pesanan VARCHAR(20) NOT NULL UNIQUE,
  metode_pembayaran ENUM('tunai','transfer','qris') NOT NULL,
  total_pembayaran INT UNSIGNED NOT NULL,
  status_pembayaran VARCHAR(40) NOT NULL DEFAULT 'Menunggu Konfirmasi',
  tanggal_pembayaran DATETIME NULL,
  CONSTRAINT fk_pembayaran_pesanan FOREIGN KEY (id_pesanan)
    REFERENCES pesanan(id_pesanan) ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO pesanan (id_pesanan, tanggal_pesanan, total_harga, status_pesanan)
VALUES
 ('KK-1001','2026-10-25 10:30:00',15000,'Sedang Diproses'),
 ('KK-1002','2026-10-26 09:15:00',12000,'Menunggu'),
 ('KK-1003','2026-10-20 12:00:00',14000,'Selesai')
ON DUPLICATE KEY UPDATE id_pesanan = VALUES(id_pesanan);

INSERT INTO pembayaran (id_pesanan, metode_pembayaran, total_pembayaran, status_pembayaran, tanggal_pembayaran)
VALUES ('KK-1003','transfer',14000,'Sudah Dibayar','2026-10-20 12:15:00')
ON DUPLICATE KEY UPDATE status_pembayaran = VALUES(status_pembayaran);
