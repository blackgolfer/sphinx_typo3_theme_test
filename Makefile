# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS   ?=
SPHINXBUILD  ?= sphinx-build
SPHINXDOCKER ?= blackgolfer/sphinx
T3DOCSDOCKER ?= blackgolfer/t3docs
SOURCEDIR     = Documentation
BUILDDIR      = build
DOCKERSRC     = /docs
SPHINXRESULT  = sphinx_build
T3DOCSRESULT  = t3docs_build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile docker-images local-pages-sphinx

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
#%: Makefile
#	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

cleanupdocker:
	@docker ps -a -f status=exited -q | xargs --no-run-if-empty docker rm
	@docker images --filter "dangling=true" -q | xargs --no-run-if-empty docker rmi

local-pages-sphinx:
	@rm -rf ${SPHINXRESULT}
	@mkdir ${SPHINXRESULT}
	@docker run --rm -v ${PWD}:${DOCKERSRC} ${SPHINXDOCKER} ${SPHINXBUILD} -M html ${SOURCEDIR} ${SPHINXRESULT}

local-pages-t3docs:
	@rm -rf ${T3DOCSRESULT}
	@mkdir ${T3DOCSRESULT}
	@docker run --rm --user=1000:1000 -v ${PWD}:/PROJECT:ro -v ${PWD}/${T3DOCSRESULT}:/RESULT ${T3DOCSDOCKER} makehtml
