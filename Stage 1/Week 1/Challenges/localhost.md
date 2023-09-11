# Menjalankan localhost[dot]run *(Versi Alternatif dari localtunnel)*
Untuk menguji proyek situs *(Website)* dengan akses tautan *(Link)* yang terbatas, dapat menggunakan
**localhost[dot]run** dengan perintah:

```shell
ssh -R <port_80_or_443>:localhost:<application_port> nokey@localhost.run -F /dev/null # Ubah *port*
aplikasi sesuai yang diinginkan, localhost[dot]run hanya melayani akses gratis melalui *port* 80
atau 443 per satu sesi.
```

Untuk mengetahui apa saja baris perintah dari *SSH* dapat menggunakan ```man 1 ssh``` setelah
pemasangan paket **man** dan **openssh** dari distro *Linux* masing-masing.

![20230911_6](/assets/images/20230911_6.png)
