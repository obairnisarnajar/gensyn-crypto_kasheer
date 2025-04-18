#!/bin/bash
echo "🌐 Starting Gensyn Node Setup by crypto_kasheer..."

# Clone Gensyn source
cd $HOME && rm -rf gensyn
git clone https://github.com/zunxbt/gensyn-testnet.git gensyn
cd gensyn

# Give execution permission and run
chmod +x gensyn.sh
./gensyn.sh

echo "✅ Node setup completed!"
