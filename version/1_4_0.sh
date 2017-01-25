#!/bin/bash -e

# Install Clojure 1.4.0
echo "================= Installing Clojure 1.4.0 ==================="
export SHA1SUM=867288bc07a6514e2e0b471c5be0bccd6c3a51f9
sudo wget http://central.maven.org/maven2/org/clojure/clojure/1.4.0/clojure-1.4.0.jar
echo "${SHA1SUM} clojure-1.4.0.jar" | sha1sum -c
mkdir $HOME/lib && mv clojure-1.4.0.jar $HOME/lib/
cat >/usr/local/bin/clj <<EOF
#!/bin/bash
if [[ $# -eq 0 ]]; then
  java -server -cp $HOME/lib/clojure-1.4.0.jar clojure.main
else
  java -server -cp $HOME/lib/clojure-1.4.0.jar clojure.main $1 -- "$@"
fi
EOF
sudo chmod a+x /usr/local/bin/clj
