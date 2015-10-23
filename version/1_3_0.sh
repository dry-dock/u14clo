#!/bin/bash -e

# Install Clojure 1.3.0
echo "================= Installing Clojure-1.3.0 ==================="
sudo wget http://repo1.maven.org/maven2/org/clojure/clojure/1.3.0/clojure-1.3.0.jar
mkdir $HOME/lib && mv clojure-1.3.0.jar $HOME/lib/
cat >/usr/local/bin/clj <<EOF
#!/bin/bash
if [[ $# -eq 0 ]]; then
  java -server -cp $HOME/lib/clojure-1.3.0.jar clojure.main
else
  java -server -cp $HOME/lib/clojure-1.3.0.jar clojure.main $1 -- "$@"
fi
EOF
sudo chmod a+x /usr/local/bin/clj

