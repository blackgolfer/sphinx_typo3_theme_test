# Using sphinx_typo3_theme

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

You can't push the images as specified in the `sh` files, but you can certainly pull and build them. One can adapt the build scheme to suit your needs.

As of the writing of this readme, I can not make the t3docs build scheme works for tikz, graphviz and plantuml. Anyone can give me a hand to make them work with t3docs build scheme is greatly appreciated.

Please feel free to contact me if you have any questions.
