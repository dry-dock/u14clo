u14clo
===================

Shippable CI image for clojure on Ubuntu 14.04. Lein2 version is available in this image.
Available clojure versions:

1. 1.3.0
2. 1.4.0
3. 1.5.1
4. 1.6.0

## How to use
You can use this image to run clojure builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. Here's a sample YML file to get you going:

````````
language: clojure

lein:
  - lein2

build_image: drydock/u14clo:prod

# Running the test with Leiningen
script:
  - lein test

`````````
