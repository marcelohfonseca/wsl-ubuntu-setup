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

# libraries for markdown writing
#pip install mkdocs # https://pypi.org/project/mkdocs/
#pip install pymdown-extensions --include-deps # https://github.com/facelessuser/pymdown-extensions
#pip install mkdocs-material --include-deps # https://pypi.org/project/mkdocs-material/

# ipython
uv pip install ipython # https://pypi.org/project/ipython/
uv pip install ipython-sql --include-deps # https://pypi.org/project/ipython-sql/
uv pip install ipdb # https://pypi.org/project/ipdb/

# jupyter notebooks
uv pip install jupyterlab # https://pypi.org/project/jupyterlab/
uv pip install ipywidgets --include-deps # https://pypi.org/project/ipywidgets/

# project structure for doing and sharing data science work
uv pip install cookiecutter # https://drivendata.github.io/cookiecutter-data-science/


# --------------------------------------------------
# > other libraries
# --------------------------------------------------

# pip install dateparser # https://pypi.org/project/dateparser/
# pip install pendulum # https://pypi.org/project/pendulum/
# pip install pydantic # https://docs.pydantic.dev/latest/
# pip install rapidfuzz # https://pypi.org/project/rapidfuzz/
# pip install tqdm # https://pypi.org/project/tqdm/


# --------------------------------------------------
# > data science libraries
# --------------------------------------------------

# EDA
# pip install pandas # https://pandas.pydata.org/
# pip install numpy # https://numpy.org/
# pip install polars # https://pola-rs.github.io/polars-book/user-guide/
# pip install ydata-profiling # https://github.com/ydataai/ydata-profiling

# databases
# pip install SQLAlchemy # https://pypi.org/project/SQLAlchemy/
# pip install Faker # https://pypi.org/project/Faker/

# dataviz
# pip install matplotlib # https://matplotlib.org/
# pip install seaborn # https://seaborn.pydata.org/
# pip install plotly # https://plotly.com/python/
# pip install bar_chart_race # https://www.dexplo.org/bar_chart_race/

# machine learning
# pip install scikit-learn # https://scikit-learn.org/stable/
# pip install xgboost # https://xgboost.readthedocs.io/en/latest/
# pip install tensorflow # https://www.tensorflow.org/
# pip install --upgrade keras # https://keras.io/
# torch # https://pytorch.org/
