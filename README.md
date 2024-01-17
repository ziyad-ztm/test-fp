# Fairpicture Website

## Technology Stack

### Backend
  - Python 3.12.x
  - Pipenv
  - Django 5.x
  - PostgresSQL 16
  - Wagtail 5.x

### Frontend
  - Django 5.x
  - Django-tailwind
    - Nodejs 20.x
    - Tailwind 3.x

## Prerequisites
  - Install [Nodejs 20.x](https://nodejs.org/en/download)
  - Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)

## Local setup
  - ### Additional steps for Windows users only
    - Command for installing Chocolatey (Powershell)
        ```bash
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        ```

    - Command for installing "Make" command
        ```bash
        choco install make
        ```
  - Command for setting up the project
    ```bash
    make setup
    ```
  - Command for applying migrations
    ```bash
    make migrate
    ```