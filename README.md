# healenium-robot-framework-example

[![Docker Pulls](https://img.shields.io/docker/pulls/healenium/hlm-backend.svg?maxAge=25920)](https://hub.docker.com/u/healenium)
[![License](https://img.shields.io/badge/license-Apache-brightgreen.svg)](https://www.apache.org/licenses/LICENSE-2.0)

Healenium with Robot-Framework usage example 

[1. Start Healenium components](#1-start-healenium-components)
* [Healenium with Selenium-Grid](#run-healenium-with-selenium-grid)

[2. Configuration RemoteWebDriver](#2-configuration-remotewebdriver)

[3. Run test](#3-run-test)

## How to start

### 1. Start Healenium components

Go into healenium folder

```sh
cd healenium
```

#### Run Healenium with Selenium-Grid:
```sh
docker-compose up -d
```

<b>ATTENTION</b>

Verify the next images are <b>Up</b> and <b>Running</b>
- `postgres-db` (PostgreSQL database to store etalon selector / healing / report)
- `hlm-proxy` (Proxy client request to Selenium server)
- `hlm-backend` (CRUD service)
- `selector imitator` (Convert healed locator to convenient format)
- `selenium-grid` (Selenium server)

### 2. Configuration RemoteWebDriver

To run test using Healenium create RemoteWebDriver with URL ```http://<remote webdriver host>:8085```:

```py
*** Variables ***
${TEST_PAGE}      https://elenastepuro.github.io/test_env/index.html
${BROWSER}        Firefox
${PROXY_URL}      http://localhost:8085

*** Keywords ***
Open Remote Chrome Browser
    Open Browser    ${TEST_PAGE}  ${BROWSER}  remote_url=${PROXY_URL}
```

### 3. Run test
In practice it is easiest to install Robot Framework and
SeleniumLibrary along with its dependencies using `pip`_ package
manager. Once you have pip installed, all you need to do is running
these commands:

    pip install -r requirements.txt


The `test cases`_ are located in the ``healenium_tests`` directory. They can be
executed using the ``robot`` command:

    robot healenium_tests


## Community / Support

* [Telegram chat](https://t.me/healenium)
* [YouTube Channel](https://www.youtube.com/channel/UCsZJ0ri-Hp7IA1A6Fgi4Hvg)

