FROM python:3.7.7-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
