PYPROJECT_TOML=pyproject.toml
VERSION=$(shell grep version $(PYPROJECT_TOML) | grep -o "\".*\"" | sed 's/\"//g')
PKG_NAME=dpsctrl

all: install

pip:
	python3 -m pip install --upgrade pip

build: pip
	python3 -m build

install: build
	python3 -m pip install --force-reinstall dist/$(PKG_NAME)-$(VERSION)-py3-none-any.whl

uninstall:
	python3 -m pip uninstall --yes $(PKG_NAME)

clean:
	rm -rf dist
	rm -rf *.egg-info