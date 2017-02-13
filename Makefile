clean:
	rm -f dist/*.tar.gz
	rm -f dist/*.whl

deps-compile:
	pip-compile --output-file requirements.dev.txt requirements.dev.in

build:
	python setup.py bdist_wheel

upload: build
	twine upload dist/*

.PHONY: clean build upload deps-compile