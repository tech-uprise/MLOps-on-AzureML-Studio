#!/bin/bash

# Check and install Python 3.9.16
PYTHON_VERSION="3.9.16"
PYTHON_PATH="/opt/python/${PYTHON_VERSION}/bin"

# Install pyenv to manage Python versions
curl https://pyenv.run | bash
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Install the desired Python version
pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION

# Verify the Python version
python --version

# Upgrade pip and setuptools
pip install --upgrade pip setuptools

# Install required packages
pip install --upgrade azure-cli==2.60.0
pip install --upgrade azure-ai-ml==1.16.0
pip install numpy==1.21.0  # Ensure NumPy is installed before scikit-learn
pip install -r requirements.txt