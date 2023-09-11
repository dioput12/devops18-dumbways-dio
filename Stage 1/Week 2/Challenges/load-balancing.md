# Load Balancing dengan **Nginx**
Dengan proses *(Daemon)* **Nginx** yang berjalan dengan konfigurasi berkas *(File)*
```/etc/nginx/conf.d/helloworld.conf``` yang berisikan:

```nginx
upstream helloworld {
    server 100.107.242.18:3000;
    server 100.117.190.143:3000;
}
server {
    server_name helloworld.xyz;

    location / {
             proxy_pass http://helloworld;
    }
}
```

Serta terdapat entri domain *helloworld* pada berkas *(File)* ```/etc/hosts```, maka akan hanya bisa
diakses layaknya domain biasa pada perangkat *(Device)* Anda.

![20230911_7](/assets/images/20230911_7.png)
