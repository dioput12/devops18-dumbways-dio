# 1.Manipulasi Teks

## 1.1. Cat
Digunakan untuk melihat isi berkas atau juga dapat digunakan untuk manipulasi teks secara sederhana.

```shell
cat <filename>
# Atau
cat foobar foobaz > newfile
# Atau
cat > newfile
CTRL-C # Tekan kombinasi ini di Papan Ketik (Keyboard).
```
![230907_1](/assets/images/20230907_1.png)

## 1.2. Sed
Digunakan untuk mengubah isi berkas yang dituju.

```shell
sed -i 's/Halo/Hi/g' newfile
```

![230907_2](/assets/images/20230907_2.png)

## 1.3. Grep
Digunakan untuk menyaring (filter) teks yang ingin dicari di berkas (file) tertentu.

```shell
grep Hi *
# Atau
grep -r Hi # Baris perintah "-r" bersifat pencarian secara keseluruhan.
```

![230907_3](/assets/images/20230907_3.png)

## 1.4. Sort
Digunakan untuk mengurutkan berkas yang dituju.

```shell
sort numbers
# Atau
sort -n numbers # Baris perintah "-n" mengurutkan berkas dengan nomor.
```

![230907_4](/assets/images/20230907_4.png)

## 1.5. Echo
Digunakan untuk menampilkan pesan dari perintah lain.

```shell
echo "It's new file!"
# Atau
echo "It's new file!" >> newfile # Menambahkan baris baru di berkas "newfile".
```

![230907_5](/assets/images/20230907_5.png)

## 1.6. Head
Digunakan untuk menampilkan isi berkas dari pangkal berkas tersebut.

```shell
head -n5 numbers # Menghitung dari 1-5.
```

![230907_6](/assets/images/20230907_6.png)

## 1.7. Tail
Digunakan untuk menampilkan isi berkas dari ujung berkas tersebut.

```shell
tail -n5 numbers # Menghitung dari 6-10.
```

![230907_7](/assets/images/20230907_7.png)

# 2. Alat Bantu Pemantauan *(Monitoring)* dengan **Htop**
Htop biasanya digunakan untuk melihat proses dari **Init (PID 1)** sampai keseluruhan proses yang
berjalan.

```shell
htop # Apabila tidak bisa dijalankan, silahkan pasang sesuai preferensi OS masing-masing.
```

![230907_8](/assets/images/20230907_8.png)
