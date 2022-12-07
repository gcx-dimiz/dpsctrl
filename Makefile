pip:
	python3 -m pip install --upgrade pip

build: pip
	python3 -m build

install: build
	python3 -m pip install dist/dpsctrl-1.0.0-py3-none-any.whl

uninstall:
	python3 -m pip uninstall --yes dpsctrl

clean:
	rm -rf dist
	rm -rf *.egg-info