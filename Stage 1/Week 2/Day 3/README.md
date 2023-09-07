# 1. Pemasangan Nginx di Slackware Linux
Instalasi **Nginx** dapat dilakukan di **Slackware Linux** dengan mengambil paket sumber *(Source
Code)* dari **Nginx**. Setelah pemasangan selesai, pastikan berkas ```/etc/rc.d/rc.php-fpm``` dan
```/etc/rc.d/rc.nginx``` telah disetel sebagai berkas yang dapat dieksekusi *(Executable)* di
dalam berkas ```/etc/rc.d/rc.local```

![20230907_9](/assets/images/20230907_9.png)

# 2. Menjalankan Aplikasi Dumbflix *(JS)*

## 2.1. Menggunakan **fnm**
Disini Penulis menggunakan **fnm** sebagai pengunduh **NodeJS** alternatif selain menggunakan
bawaan *(Default)* OS yang digunakan. Sehingga dibutuhkan untuk menjalankan ```fnm download 14```
dan ```fnm use 14``` di dalam proyek aplikasi dumbflix.

![20230907_10](/assets/images/20230907_10.png)

## 2.2. Menjalankan *Reverse Proxy* pada Aplikasi Dumbflix *(JS)*
Setelah menjalankan ```npm start``` pada proyek Aplikasi Dumbflix, tambahkan konfigurasi baru untuk
**Nginx** pada berkas ```/etc/nginx/conf.d/dumbways.conf``` dengan isi:

```conf
server {
    server_name dumbflix.xyz;

    location / {
             proxy_pass http://127.0.0.1:3000;
    }
}
```

Pada berkas ```/etc/hosts```, tambahkan isian ini dan jangan lupa untuk memuat ulang *(Restart)*
proses nginx *(Nginx Daemon)* serta cek ulang konfiguasi *Nginx* dengan ```sudo nginx -t```

```shell
cat >> /etc/hosts
127.0.0.1 dumbflix.xyz
^C # Tekan di Papan Ketik *(Keyboard)*
```

Apabila telah selesai dan tidak ada hal yang keliru dalam menyetel ini, maka dapat diakses dengan
domain yang dibuat:

![20230907_11](/assets/images/20230907_11.png)
