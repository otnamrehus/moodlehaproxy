#!/bin/bash

# Fungsi untuk menampilkan menu 
show_menu() {
    echo "OPTION CHOICE:"
    echo "0)  LOGIN Docker Hub"
    echo "1)  1st[INSTALL-1 Moodle - 1 MariaDB]  .:: Ctrl+C for Stop/Idle ::."
    echo "1s) *1st[INSTALL-1 Moodle - 1 MariaDB] .:: For Silent ::."
    echo "2)  2nd[INSTALL-2 Moodle - 1 MariaDB - 1 Haproxy]"
    echo "2s)  2nd[INSTALL-2 Moodle - 1 MariaDB - 1 Haproxy] .:: For Silent ::."
    echo "3)  STOP Service"
    echo "4)  START Service"
    echo "5)  REMOVE Service [ALL]"
    echo "6)  ViEW DIREKTORI"
    echo "x)  EXIT"
}

# Fungsi untuk login ke Docker Hub
docker_login() {
    echo "Masukkan credentials Docker Hub Anda:"
    docker login
}

# Fungsi untuk menjalankan perintah sesuai pilihan
run_command() {
    case $1 in
        0)
            echo "Login ke Docker Hub"
            docker_login
            ;;
        1)
            echo "Menjalankan 1st[INSTALL-1 Moodle - 1 MariaDB]"
            rm -rf ~/docker/moodlehaproxy/docker-compose.yml && \
            cp ~/docker/moodlehaproxy/docker-compose.yml.1st ~/docker/moodlehaproxy/docker-compose.yml && \
            cd ~/docker/moodlehaproxy && docker-compose -p 'moodlehaproxy' up --build
            ;;
        1s)
            echo "Menjalankan 1st[INSTALL-1 Moodle - 1 MariaDB] For Silent"
            rm -rf ~/docker/moodlehaproxy/docker-compose.yml && \
            cp ~/docker/moodlehaproxy/docker-compose.yml.1st ~/docker/moodlehaproxy/docker-compose.yml && \
            cd ~/docker/moodlehaproxy && docker-compose -p 'moodlehaproxy' -d
            ;;
        2)
            echo "Menjalankan 2nd[INSTALL-2 Moodle - 1 MariaDB - 1 Haproxy]"
            rm -rf ~/docker/moodlehaproxy/docker-compose.yml && \
            cp ~/docker/moodlehaproxy/docker-compose.yml.2nd ~/docker/moodlehaproxy/docker-compose.yml && \
            cd ~/docker/moodlehaproxy && docker-compose -p 'moodlehaproxy' up --build
            ;;
        2s)
            echo "Menjalankan 2nd[INSTALL-2 Moodle - 1 MariaDB - 1 Haproxy]"
             rm -rf ~/docker/moodlehaproxy/docker-compose.yml && \
             cp ~/docker/moodlehaproxy/docker-compose.yml.2nd ~/docker/moodlehaproxy/docker-compose.yml && \
             cd ~/docker/moodlehaproxy && docker-compose -p 'moodlehaproxy' -d
             ;;
        3)
            echo "Menghentikan Service"
            docker-compose -p 'moodlehaproxy' stop
            ;;
        4)
            echo "Memulai Service"
            docker-compose -p 'moodlehaproxy' start
            ;;
        5)
            echo "Menghapus Service"
            docker-compose -p 'moodlehaproxy' down -v
            ;;
        6)
            echo "Isi direktori /root/docker/moodlehaproxy:"
            ls -l ~/docker/moodlehaproxy
            ;;
        x)
            echo "Keluar"
            exit 0
            ;;
        *)
            echo "Pilihan tidak valid"
            ;;
    esac
}

# Program utama
while true; do
    show_menu
    read -p "Masukkan pilihan Anda: " choice
    run_command $choice
    echo " "
    cd
    read -n1 -r -p "Tekan tombol apa saja untuk kembali ke menu..." key
    echo " "
done
