# Moodle-Haproxy [Docker Version] 
    1st Docker Service is already available on the system
    Component Docker Service :
    - Moodle 4.3 [Bitnami]
    - MariaDB 11.2 [Bitnami]
    - Haproxy
    
# Preparation
    mkdir -p ~/docker && \
    cd ~/docker && \
    git clone https://github.com/otnamrehus/moodlehaproxy.git && \
    cd moodlehaproxy && \
    chmod +x install_moodle.sh
    
# Installation
    ./install_moodle.sh

    .....
    1)  1st[INSTALL-1 Moodle - 1 MariaDB]  .:: Ctrl+C for Stop/Idle ::.
    1s) *1st[INSTALL-1 Moodle - 1 MariaDB] .:: For Silent ::.
    2)  2nd[INSTALL-2 Moodle - 1 MariaDB - 1 Haproxy]
    2s)  2nd[INSTALL-2 Moodle - 1 MariaDB - 1 Haproxy] .:: For Silent ::.
    3)  STOP Service
    4)  START Service
    5)  Remove Service
    6)  Lihat isi direktori
    x)  Keluar
    .....
    
# Running
    - Open Browser     
    - Haproxy Running 
      http://IP_ADDRESS:80   
    - Moodle-1  
      http://IP_ADDRESS:81  
    - Moodle-2  
      http://IP_ADDRESS:82 
# Login
    - Admin User
      Username [ user ]
      Password [ bitnami ]        
