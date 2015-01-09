#!/bin/zsh
set -eux
rm -rf _build lib/piperunner.jar
mkdir _build

javac -source 8 -target 8 -d _build -cp "$(print lib/*.jar | tr ' ' ':')":../stanford-corenlp-full-2014-10-31/stanford-corenlp-3.5.0.jar javasrc/**/*.java
(cd _build && jar cf ../lib/piperunner.jar .)
ls -l lib/piperunner.jar
