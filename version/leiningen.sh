#!/bin/bash -e

# Install Clojure's build tool: leiningen
echo 'Installing leiningen'
sudo wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo mv lein /usr/local/bin/lein
sudo chmod a+x /usr/local/bin/lein
