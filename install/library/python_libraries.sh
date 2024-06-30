#!/bin/bash

# commitizen global installation
pipx install commitizen # https://pypi.org/project/commitizen/

# libraries for virtual development environments
pipx install python-dotenv # https://pypi.org/project/python-dotenv/
pipx install poetry # https://python-poetry.org/

# libraries for code formatting and styling
pipx install blue # https://pypi.org/project/blue/
pipx install isort # https://pycqa.github.io/isort/
pipx install prospector # https://pypi.org/project/prospector/
pipx install mypy # https://pypi.org/project/mypy/

# libraries for security
pipx install bandit # https://pypi.org/project/bandit/
pipx install pip-audit # https://pypi.org/project/pip-audit/

# libraries for debug
pipx install ipdb # https://pypi.org/project/ipdb/

# libraries for tests
pipx install pytest # https://pypi.org/project/pytest/
#pipx install tox # https://pypi.org/project/tox/

# libraries for markdown writing
#pipx install mkdocs # https://pypi.org/project/mkdocs/
#pipx install pymdown-extensions --include-deps # https://github.com/facelessuser/pymdown-extensions
#pipx install mkdocs-material --include-deps # https://pypi.org/project/mkdocs-material/

# ipython and jupyter notebooks
pipx install ipython # https://pypi.org/project/ipython/
pipx install ipython-sql --include-deps # https://pypi.org/project/ipython-sql/
pipx install jupyterlab # https://pypi.org/project/jupyterlab/
pipx install ipywidgets --include-deps # https://pypi.org/project/ipywidgets/

# project structure for doing and sharing data science work
pipx install cookiecutter # https://drivendata.github.io/cookiecutter-data-science/

# --------------------------------------------------
# > other libraries
# --------------------------------------------------

# pip install tqdm # https://pypi.org/project/tqdm/
# pip install dateparser # https://pypi.org/project/dateparser/
# pip install pendulum # https://pypi.org/project/pendulum/
# pip install rapidfuzz # https://pypi.org/project/rapidfuzz/


# --------------------------------------------------
# > data science libraries
# --------------------------------------------------

# pip install pandas # https://pandas.pydata.org/
# pip install numpy # https://numpy.org/
# pip install polars # https://pola-rs.github.io/polars-book/user-guide/

# pip install ydata-profiling # https://github.com/ydataai/ydata-profiling

# pip install pip install SQLAlchemy # https://pypi.org/project/SQLAlchemy/
# pip install Faker # https://pypi.org/project/Faker/

# pip install matplotlib # https://matplotlib.org/
# pip install seaborn # https://seaborn.pydata.org/
# pip install plotly # https://plotly.com/python/
# pip install bar_chart_race # https://www.dexplo.org/bar_chart_race/

# pip install scikit-learn # https://scikit-learn.org/stable/
# pip install xgboost # https://xgboost.readthedocs.io/en/latest/
# pip install tensorflow # https://www.tensorflow.org/
# pip install --upgrade keras # https://keras.io/
# torch # https://pytorch.org/