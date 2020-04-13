[![Build Status](https://api.travis-ci.org/dc-js/dc.js.svg?branch=master)](http://travis-ci.org/dc-js/dc.js)
# Using sphinx_typo3_theme

The basic desired functionalities of a documentation system are
- sphinx-build compatible
- sphinx_typo_theme
- sphinx documentation compatibility
- t3docs documentation
- basic latex typesetting abilities
- basic tikz graphic abilities
- basic diagrams with graphviz (this could be opitonal)
- basic diagrams with plantuml

This is a testing project for the above functions, along with the development of two building schemes: the sphinx-build scheme and the t3docs build scheme. The testing for t3docs are mostly from https://github.com/TYPO3-Documentation/t3SphinxThemeRtdDemoDocs/.

To build the documents using `sphinx-build`:
```shell
make local-pages-sphinx
```
This will compile the results into `sphinx_build`. To see the generated html files,
one can use a browser to load the file sphinx_build/html/index.html.

To build the document using `t3docs/render-documentation`:
```shell
make local-pages-sphinx
```
The results are in t3docs_build. To examin the result, please use a browser to load the file
`t3docs_build/Result/project/0.0.0/t3docs/index.html`.

The docker images used in the above building processes are `blackgolfer/sphnix` and `blackgolfer/t3docs`, please refer to the `Makefile` for the usage of them.

The `docker` directory contains all the docker and docker-compose files for generating the images. If you want to regenerate `blackgolfer/sphinx`, here are the command line in linux:
```shell
cd docker
bash build.sh
```

For `blackgolfer/t3docs`,
```shell
cd docker/t3docs
bash build.sh
```

You can't push the images as specified in the `sh` files, but one can certainly pull and build them. The build schemes here are not intended to cover all suituations, but rather to provide references for adapting to one's need.

As of the writing of this readme, I can not make the t3docs build scheme works for tikz, graphviz and plantuml. Anyone can give me a hand to make them work with t3docs build scheme or any other help is greatly appreciated.

Please feel free to contact me if you have any questions.
