# Version Control System

## 1. Distributed Version Control
Dalam pengembangan *software*, **Distributed Version Control** adalah suatu bentuk kontrol versi di
mana basis kode lengkap, termasuk sejarah asal usul lengkapnya, dicerminkan di setiap perangkat
*Developer*. Dibandingkan dengan **Version Control System** seperti *Apache Subversion*, ini
memungkinkan *branching* dan *merging* secara otomatis, mempercepat sebagian besar operasi (kecuali
*push* dan *pull*), meningkatkan kemampuan untuk bekerja secara offline, dan tidak bergantung pada
satu sentral lokasi untuk pencadangan (Backup). **Git**, salah satu **Developer Tool** paling
populer di dunia, adalah bagian dari **Distributed Version Control**. Ini memungkinkan untuk
menyelaraskan *repository* dengan mentransfer *patch* secara **peer to peer**. Tidak ada satu pun
versi tunggal dari **software repository** tersebut. Sebaliknya, setiap pengguna memiliki cadangan
pekerjaan masing-masing dan riwayat perubahan lengkap.

## 2. Buat Repositori dengan Nama Makanan Kesukaan

### 2.1 Membuat Repositori melalui GitHub
Masuk ke Akun GitHub, lalu buat repositori yang ingin dibuat. (Penulis menggunakan slot bakso).
![20230906_1](/assets/images/20230906_1.png)

### 2.2 Memuat Repositori melalui Terminal
Lakukan perintah dari Git ini untuk inisialisasi repositori dengan Git.

```git
git init
```
![20230906_2](/assets/images/20230906_2.png)

### 2.3 Membuat Berkas Baru dan Memeriksanya
Pengecekan status dari Repositori yang baru dibuat bisa dilihat melalui Git. Sekarang terdapat tiga
berkas *(file)* yang tidak masuk dalam pengamatan *(Untracked)* dari Git yang dapat ditambahkan
melalui perintah ```git add```.

```shell
touch bercabe gorengan pentol # Tentunya berkas yang dibuat ini bukan berkas kosong belaka.
```

```git
git status
git add . -v # Baris perintah "-v" ini menandakan penambahan informasi.
```

![20230906_3](/assets/images/20230906_3.png)
![20230906_4](/assets/images/20230906_4.png)

### 2.4 Membuat Perubahan Baru (Commit)
Tulis pesan untuk setiap perubahan yang dilakukan dari Repositori tadi.

```git
git commit -m "Kesukaanku" # Yang diapit oleh tanda petik dua (") dapat diubah sesuai keinginan.
```

![20230906_5](/assets/images/20230906_5.png)

### 2.5 Meletakkan Link Kendali (Remote) dari GitHub
Tambahkan *Remote Link* untuk kendali akses Repositori melalui GitHub.

```git
git remote add origin git@github.com:dioput12/bakso.git
git remote -v # Bersifat opsional untuk mengecek ulang tautan
```

![20230906_6](/assets/images/20230906_6.png)

### 2.6 Menambahkan Kunci SSH untuk Repositori
Dikarenakan alasan keamanan, GitHub sekarang hanya menerima akses perubahan kode melalui Kunci
**SSH**. Ubah baris perintah ```<path_to_privatekey>``` ke alamat *path* yang berisikan kunci privat
 akses **SSH** yang telah ditambahkan di Akun Github Anda.

```git
git config core.sshCommand "ssh -o IdentitiesOnly=yes -i <path_to_privatekey> -F /dev/null" # Baris
perintah */dev/null* dapat diubah menjadi **none** apabila versi **SSH** memungkinkan opsi ini.
```

![20230906_7](/assets/images/20230906_7.png)

### 2.7 Menerapkan Perubahan ke Repositori GitHub
Apabila sudah sesuai keinginan, lakukan *push* ke Repositori GitHub yang dapat diakses secara penuh.

```git
git push -u origin master
```

![20230906_8](/assets/images/20230906_8.png)

### 2.8 Menambahkan Ranting (Branch) di Repositori
Apabila dibutuhkan *Branch* baru, dapat menggunakan perintah:

```git
git branch <branch_name> # Ubah baris <branch_name> sesuai keinginan
```

![20230906_9](/assets/images/20230906_9.png)

## 3. Tiga Perintah **Git** yang dilakukan

### 3.1 Git Log
Digunakan untuk melihat transaksi revisi (Commit) yang ada.

![20230906_10](/assets/images/20230906_10.png)

### 3.2 Git Blame
Digunakan untuk melihat revisi kode (Commit) per baris.

![20230906_11](/assets/images/20230906_11.png)

### 3.3 Git Diff
Digunakan untuk melihat perbedaan (Patch) yang ada.

![20230906_12](/assets/images/20230906_12.png)
