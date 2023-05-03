-- Buat fungi inputPelanggan(), setelah itu panggil fungsinya
DELIMITER $$
CREATE PROCEDURE inputPelanggan(kode varchar(10), nama_pelanggan varchar(50), jk char(1), tmp_lahir varchar(30), tgl_lahir date, alamat varchar(40), email varchar(45), kartu_id int(11))
    -> BEGIN
    -> INSERT INTO pelanggan(kode, nama_pelanggan, jk, tmp_lahir, tgl_lahir, alamat, email, kartu_id) VALUES (kode, nama_pelanggan, jk, tmp_lahir, tgl_lahir, alamat, email, kartu_id);
    -> END$$

DELIMITER ;
CALL inputPelanggan('011107','Aurahman','L','Tangerang','2002-03-25','perigi baru','aurahman@gmail.com', 1);

-- Buat fungsi showPelanggan(), setelah itu panggil fungsinya
DELIMITER $$
CREATE PROCEDURE showPelanggan()
    -> BEGIN
    -> SELECT kode, nama_pelanggan, jk, tmp_lahir, tgl_lahir, email FROM pelanggan;
    -> END$$
DELIMITER ;
CALL showPelanggan();

-- Buat fungsi inputProduk(), setelah itu panggil fungsinya
DELIMITER $$
CREATE PROCEDURE inputProduk(kode varchar(10), nama varchar(45), harga_beli double, harga_jual double, stok int(11), min_stok int(11), jenis_produk_id int(11))
    -> BEGIN
    -> INSERT INTO produk(kode, nama, harga_beli, harga_jual, stok, min_stok, jenis_produk_id) VALUES(kode, nama, harga_beli, harga_jual, stok, min_stok, jenis_produk_id);
    -> END$$

DELIMITER ;
CALL inputProduk('MT01', 'Monitor 24 Inch', 2000000, 3000000, 10, 2, 1);

-- Buat fungsi showProduk(), setelah itu panggil fungsinya
DELIMITER $$
CREATE PROCEDURE showProduk()
    -> BEGIN
    -> SELECT nama, harga_beli, harga_jual FROM produk;
    -> END$$
DELIMITER ;
CALL showProduk();

-- Buat fungsi totalPesanan(), setelah itu panggil fungsinya



-- tampilkan seluruh pesanan dari semua pelanggan



-- buatkan query panjang di atas menjadi sebuah view baru: pesanan_produk_vw (menggunakan join dari table pesanan, pelanggan dan produk)