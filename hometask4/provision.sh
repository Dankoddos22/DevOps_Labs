      sudo useradd adminuser
      usermod -aG sudo adminuser
      sudo useradd poweruser
      sudo bash -c 'echo "poweruser     ALL=(ALL:ALL) /sbin/iptables" >> /etc/sudoers'
      usermod -aG adminuser poweruser
      sudo find /home/ -perm /640
