CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim VARCHAR(8) NOT NULL,
    nama VARCHAR (50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- data jurusan
insert into jurusan (kode,nama) values ('APBL','Administrasi Publik');
insert into jurusan (kode,nama) values ('FEDB','Fakultas Ekonomi Dan Bisnis');
insert into jurusan (kode,nama) values ('PTIK','Pendidikan Teknik Informatika');
insert into jurusan (kode,nama) values ('MTMK','Matematika');
insert into jurusan (kode,nama) values ('FRMS','Farmasi');
insert into jurusan (kode,nama) values ('STSK','Statistika');

-- data mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'20220001', 'Fulan', 'laki-laki', 'Malang', '2000-12-23', 'Jl. Sukarno Hatta');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (2,'20220002', 'Candra', 'laki-laki', 'Surabaya', '2000-04-16', 'Jl. Perjuangan');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (3,'20220003', 'Muhammad', 'laki-laki', 'Malang', '2001-01-20', 'Jl. Candi Borobudur');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (4,'20220004', 'Ayu', 'perempuan', 'Lumajang', '2000-09-10', 'Jl. Apel');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (5,'20220005', 'Lia', 'perempuan', 'Ponorogo', '2000-11-23', 'Jl. Imam Bonjol');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (6,'20220006', 'Dewi', 'perempuan', 'Malang', '2001-03-07', 'Jl. Veteran');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (6,'20220007', 'Rini', 'perempuan', 'Malang', '2000-08-10', 'Jl. Rambutan');


-- update data
update mahasiswa set alamat = "Jl. Candi Panggung" where id = 3;

-- delete data
delete from mahasiswa where id=7;
