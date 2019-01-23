echo "install curl"
sudo apt-get install -y curl

echo "install sdkman"
curl -s "https://get.sdkman.io" | bash  
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "cp zip"
mkdir -p ~/.sdkman/archives
cp grails-3.3.0.zip groovy-2.4.15.zip java-8.0.201-oracle.zip 
~/.sdkman/archives

echo "install java"
sdk i java 8.0.201-oracle

echo "install groovy"
sdk i groovy 2.4.15

echo "install grails"
sdk i grails 3.3.0
