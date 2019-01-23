mkdir -p ~/sdk
tar xvJf node*.* -C ~/sdk

echo "create node folder link"
ln -s ~/sdk/node* ~/sdk/node

echo "create node link"
sudo ln -s ~/sdk/node/bin/node /usr/local/bin/node

echo "create npm link"
sudo ln -s ~/sdk/node/bin/npm /usr/local/bin/npm

echo "set taobao registry"
npm config set registry https://registry.npm.taobao.org

echo "install angular"
npm install -g @angular/cli

echo "create ng link" 
sudo ln -s ~/sdk/node/bin/ng /usr/local/bin/ng

echo "install vue"
npm install -g @vue/cli

echo "create vue link"
sudo ln -s ~/sdk/node/bin/vue /usr/local/bin/vue


