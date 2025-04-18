#!/bin/bash

# Step 1: Update & install essentials
apt update && apt install -y sudo

sudo apt update && sudo apt install -y python3 python3-venv python3-pip curl wget screen git lsof

# Step 2: Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

# Step 3: Run Node Setup Script
curl -sSL https://raw.githubusercontent.com/crypto_kasheer/gensyn-crypto_kasheer/main/node.sh | bash

# Step 4: Start Screen Session
screen -S gensyn

# Step 5: Run Gensyn Testnet Setup
cd $HOME && rm -rf gensyn-testnet
git clone https://github.com/zunxbt/gensyn-testnet.git
chmod +x gensyn-testnet/gensyn.sh
./gensyn-testnet/gensyn.sh

# Step 6: Run Backup Script
[ -f backup.sh ] && rm backup.sh
curl -sSL -O https://raw.githubusercontent.com/crypto_kasheer/gensyn1-crypto_kasheer/main/backup.sh
chmod +x backup.sh
./backup.sh
