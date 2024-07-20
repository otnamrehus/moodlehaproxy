# Moodle-Haproxy [Docker Version] 
    1st Docker Service is already available on the system
    Component Docker Service :
    - Moodle 4.3 [Bitnami]
    - MariaDB 11.2 [Bitnami]
    - Haproxy
    
# Preparation
    mkdir -p /root/docker && \
    cd /root/docker && \
    git clone https://github.com/otnamrehus/moodlehaproxy.git && \
    cd moodlehaproxy && \
    chmod +x install_moodle.sh
    
# Installation
    ./install_moodle.sh
    
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
