# $Id: Makefile,v 1.6 2015/12/02 01:01:35 hagan Exp $
#

PYTHON=`which python`

all:
	@echo "make localpypi - Build package and install on local pypi"
	@echo "make clean - Get rid of scratch and byte files"

localpypi:
	@echo "Compiling package for local pypi installation"
	$(PYTHON) setup.py sdist bdist_wheel upload -r local

clean:
	find . -name '*.pyc' -delete
	rm -f dist/*.whl
