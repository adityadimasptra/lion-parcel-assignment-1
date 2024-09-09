# Robot Framework Automation

Hi i am Aditya Dimas Saputra, This repository contains test automation scripts built using [Robot Framework](https://robotframework.org/). The purpose of these tests is to automate the testing of a [reqres.in](https://reqres.in/api)

## Table of Contents
- [Installation](#installation)
- [Test Execution](#test-execution)
- [Reporting](#reporting)

## Installation

1. Clone this repository:

    ```bash
    git clone https://github.com/adityadimasptra/lion-pracel-assgment-1.git
    ```
2. Navigate to the project directory:
    ```bash
    cd lion-parcel-assignment-1
    ```
3. Install 
    ```bash
    pip install -r requirements.txt
    ```
## Test Execution
To run tests, use the following command:
```bash
robot tests/
```
You can also run individual test files or test cases using:
```bash
robot tests/create_user.robot
```
## Reporting
After running the tests, Robot Framework generates two main reports:
* log.html: A detailed log of the test execution.
* report.html: A summary report of the test execution.
Both files are saved in the logs/ directory by default.