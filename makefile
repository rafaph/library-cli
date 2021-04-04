BIN = $(VIRTUAL_ENV)/bin

.PHONY: test
test:
	$(BIN)/pytest --version
	$(BIN)/pytest

.PHONY: test_staged
test_staged:
	$(BIN)/pytest --version
	$(BIN)/pytest --picked --suppress-no-test-exit-code

.PHONY: test_watch
test_watch:
	$(BIN)/pytest --version
	$(BIN)/ptw

.PHONY: test_coverage
test_coverage:
	$(BIN)/pytest --cov=library_cli --cov-report term

.PHONY: black
black:
	$(BIN)/black --version
	$(BIN)/black .

.PHONY: black_check
black_check:
	$(BIN)/black --version
	$(BIN)/black --check .

.PHONY: flake8
flake8:
	$(BIN)/flake8 --version
	$(BIN)/flake8 .

.PHONY: isort
isort:
	$(BIN)/isort --version
	$(BIN)/isort .

.PHONY: isort_check
isort_check:
	$(BIN)/isort --version
	$(BIN)/isort --check .