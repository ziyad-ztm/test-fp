# Python runtime based on Debian 12.
FROM python:3.12-slim-bookworm

# prevent python from writing pyc files to disc & force Python stdout and stderr streams to be unbuffered
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Use /app folder as a directory where the source code is stored.
WORKDIR /app

COPY . .

# Install system packages required by the project
RUN apt-get update && apt-get upgrade -y && \
    apt-get autoremove && apt-get autoclean && \
    apt-get install -y curl vim

# Install node 20.x (LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs

# Install django-tailwind dependency
RUN npm install cross-env

# Install pipenv and pipfile dependencies
RUN pip install --upgrade pip && pip install pipenv && pipenv install --system

# Collect static files.
RUN python manage.py collectstatic --noinput --clear

# Port used by this container to serve HTTP.
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
