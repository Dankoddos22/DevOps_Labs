sudo useradd adminuser                        # Create user 'adminuser'
echo adminuser | passwd adminuser --stdin     # Set password 'password' to 'adminuser'
sudo usermod -aG wheel adminuser              # Give wheel (sudo) permision to 'adminuser'

sudo useradd poweruser                        # Create user 'poweruser'
echo poweruser | passwd poweruser --stdin     # Set password 'password' to 'poweruser'
sudo usermod -aG root poweruser               # Give root permision to 'poweruser'

setfacl -m g:poweruser:rx /home/adminuser     # Give permision to read '/home/adminuser' for 'poweruser'

find / -perm /4000                     
