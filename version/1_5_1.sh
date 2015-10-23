#!/bin/bash -e

# Install Clojure 1.5.1
echo "================= Installing Clojure-1.5.1 ==================="
sudo wget http://central.maven.org/maven2/org/clojure/clojure/1.5.1/clojure-1.5.1.jar
mkdir $HOME/lib && mv clojure-1.5.1.jar $HOME/lib/
cat >/usr/local/bin/clj <<EOF
#!/bin/bash
if [[ $# -eq 0 ]]; then
  java -server -cp $HOME/lib/clojure-1.5.1.jar clojure.main
else
  java -server -cp $HOME/lib/clojure-1.5.1.jar clojure.main $1 -- "$@"
fi
EOF
sudo chmod a+x /usr/local/bin/clj
