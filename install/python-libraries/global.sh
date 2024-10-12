#!/bin/bash

# --------------------------------------------------
# > common libraries
# --------------------------------------------------

# commitizen global installation
uv pip install commitizen # https://pypi.org/project/commitizen/

# libraries for virtual development environments
uv pip install python-dotenv # https://pypi.org/project/python-dotenv/
#pip install poetry # https://python-poetry.org/

# libraries for code formatting and styling
uv pip install black # https://black.readthedocs.io/en/stable/index.html
uv pip install isort # https://pycqa.github.io/isort/
uv pip install prospector # https://pypi.org/project/prospector/
uv pip install mypy # https://pypi.org/project/mypy/

# libraries for security
uv pip install bandit # https://pypi.org/project/bandit/
#pip install pip-audit # https://pypi.org/project/pip-audit/

# libraries for tests
uv pip install pytest # https://pypi.org/project/pytest/
#pip install tox # https://pypi.org/project/tox/

# ipython
uv pip install ipython # https://pypi.org/project/ipython/
uv pip install ipython-sql --include-deps # https://pypi.org/project/ipython-sql/
uv pip install ipdb # https://pypi.org/project/ipdb/

# libraries for markdown writing
#pip install mkdocs # https://pypi.org/project/mkdocs/
#pip install pymdown-extensions --include-deps # https://github.com/facelessuser/pymdown-extensions
#pip install mkdocs-material --include-deps # https://pypi.org/project/mkdocs-material/


# --------------------------------------------------
# > other libraries
# --------------------------------------------------

# pip install dateparser # https://pypi.org/project/dateparser/
# pip install pendulum # https://pypi.org/project/pendulum/
# pip install pydantic # https://docs.pydantic.dev/latest/
# pip install rapidfuzz # https://pypi.org/project/rapidfuzz/
# pip install tqdm # https://pypi.org/project/tqdm/