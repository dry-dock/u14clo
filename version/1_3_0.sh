#!/bin/bash -e

# Install Clojure 1.3.0
echo "================= Installing Clojure-1.3.0 ==================="
export SHA1SUM=04830e76a9e8c029acb257a70c5cf30592e5a301
sudo wget http://repo1.maven.org/maven2/org/clojure/clojure/1.3.0/clojure-1.3.0.jar
echo "${SHA1SUM} clojure-1.3.0.jar" | sha1sum -c
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

