#!/bin/bash


sudo apt-get clean
sudo mv /var/lib/apt/lists /tmp
sudo mkdir -p /var/lib/apt/lists/partial
sudo apt-get clean
sudo apt-get update

# Install Clojure's build tool: leiningen
echo "================= Install clojure's build tool: leiningen ==================="
sudo wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo mv lein /usr/local/bin/lein
sudo chmod a+x /usr/local/bin/lein

for file in /u14clo/version/*;
do
  $file
done
