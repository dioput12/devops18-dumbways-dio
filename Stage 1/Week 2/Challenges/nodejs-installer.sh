#!/usr/bin/env bash
# Hanya dapat digunakan untuk Sistem Operasi (OS) Debian, Ubuntu, atau turunannya.
sudo apt update && sudo apt install nodejs -y

sudo apt install curl unzip -y
curl -fsSL https://fnm.vercel.app/install | bash
source $HOME/.bashrc
fnm download 14
fnm use 14 # Biasanya menggunakan `fnm default system` apabila sesi skrip ini telah berakhir.
