#!/bin/bash -e

# Install Clojure 1.7.0
echo "================= Installing Clojure-1.7.0 ==================="
export SHA1SUM=e14ab26a8b361b36de2d224aed12970d9662284b
sudo wget https://repo1.maven.org/maven2/org/clojure/clojure/1.7.0/clojure-1.7.0.zip
echo "${SHA1SUM} clojure-1.7.0.zip" | sha1sum -c
sudo unzip clojure-1.7.0.zip
mkdir $HOME/lib && cp clojure-1.7.0/clojure-1.7.0.jar $HOME/lib
sudo rm -rf clojure-1.7.0*
cat >/usr/local/bin/clj <<EOF
#!/bin/bash
if [[ $# -eq 0 ]]; then
  java -server -cp $HOME/lib/clojure-1.7.0.jar clojure.main
else
  java -server -cp $HOME/lib/clojure-1.7.0.jar clojure.main $1 -- "$@"
fi
EOF
sudo chmod a+x /usr/local/bin/clj
