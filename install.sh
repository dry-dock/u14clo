#!/bin/bash


# Install Clojure's build tool: leiningen
echo "================= Install clojure's build tool: leiningen ==================="
sudo wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo mv lein /usr/local/bin/lein
sudo chmod a+x /usr/local/bin/lein

for file in /tmp/version/*;
do
  $file
done
