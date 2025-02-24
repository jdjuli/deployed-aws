ssh -i "LightsailDefaultKey-REGION.pem" ubuntu@ip.ip.ip.ip

# Versión SO y nombre de usuario
lsb_release -a
echo $USER

# Instala Docker
sudo apt update
sudo apt install -y docker.io

# Agrega al usuario al grupo, evita utilizar sudo
sudo usermod -aG docker $USER
newgrp docker

# Ver grupo de usuario y versión de docker
groups $USER
docker --version
