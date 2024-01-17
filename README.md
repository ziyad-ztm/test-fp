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

## Local setup
  - Install [Nodejs 20.x](https://nodejs.org/en/download)
  - ### Additional steps for Windows users
    #### Command for installing Chocolatey (Powershell)
        `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`

    #### Command for installing "Make" command
        `choco install make`
  - Run `make setup`