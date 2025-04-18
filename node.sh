#!/bin/bash
echo "🌐 Starting Gensyn Node Setup by crypto_kasheer..."

cd $HOME && rm -rf gensyn
git clone https://github.com/zunxbt/gensyn-testnet.git gensyn
cd gensyn

chmod +x gensyn.sh
./gensyn.sh

echo "✅ Node setup completed!"
