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
  - **For Windows Users only**:
    - Install Chocolatey for installing `make` command:
  
      Command for installing Chocolatey (In Powershell as admin)
        ```bash
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        ```

      Command for installing `make` command
      ```bash
      choco install make
      ```

## Local setup
  - Run the following commands in the directroy that contains **Makefile**
    - Command for setting up the project
      ```bash
      make setup
      ```
    - Command for applying migrations
      ```bash
      make migrate
      ```

## Tailwind
 - To start tailwind watch:
    ```bash
    make tw-npm-start
    ```