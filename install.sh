#!/bin/bash

# Update and upgrade the system
sudo apt-get update
sudo apt-get upgrade -y

# Install required packages
sudo apt-get install -y git build-essential autoconf libssl-dev libcurl4-openssl-dev libtool zlib1g-dev libgmp-dev libjansson-dev automake texinfo

# Clone the cpuminer-gr repository
git clone https://github.com/michal-zurkowski/cpuminer-gr

# Change to the cpuminer-gr directory
cd cpuminer-gr

# Run autoreconf
autoreconf -fi

# Configure for high performance
./configure CFLAGS="-march=native" --with-crypto --with-curl
make

# Create mining scripts
echo "#!/bin/bash" > mine_doge.sh
echo "./cpuminer --algo gr --url stratum+ssl://ghostrider.unmineable.com:443 --user DOGE:DExbdJb2iu5foXXa3QbiArbiSXWwvCRod1.rn9pm#tdi --cpu-priority 5 --threads \$(nproc --all) --no-color" >> mine_doge.sh

echo "#!/bin/bash" > mine_neox.sh
echo "./cpuminer --algo gr --url stratum+ssl://ghostrider.unmineable.com:443 --user NEOX:GgJsFyHH1VnDNbT1SNseYrpbNWj8d3dJuD.rn9pm#tdi --cpu-priority 5 --threads \$(nproc --all) --no-color" >> mine_neox.sh

echo "#!/bin/bash" > mine_jup.sh
echo "./cpuminer --algo gr --url stratum+ssl://ghostrider.unmineable.com:443 --user JUP:8dnuYyi2m7vTAW1nnA9taf5gTGmvSLuihUXpLAiApvjw.rn9pm#tdi --cpu-priority 5 --threads \$(nproc --all) --no-color" >> mine_jup.sh

# Make the mining scripts executable
chmod +x mine_doge.sh mine_neox.sh mine_jup.sh

echo "Installation complete. You can now run the mining scripts with ./mine_doge.sh, ./mine_neox.sh, or ./mine_jup.sh."
