# robotProject
 
# Author: Telmara Silva de Sa

## Installation:
- Requires Robot Framework 
- Python 2.7 or above
- after downloading the project, please install python and use this pip commands: 

```shell
pip install robotframework
```

```shell
pip install --upgrade robotframework-seleniumlibrary
```

```shell
pip install --upgrade robotframework-faker
```

```shell
pip install webdriver-manager
```

## Screenshots, Console log and reports:
TRIVAGO\Logs

## Console logs:
TRIVAGO\Logs


## Commands:
full test cycle: 
```shell
robot -d ./Logs Tests\buscaHotel.robot
```

Note: add this parameters to ignore errors in the base page:
Open Browser        about:blank   Chrome         executable_path=C:/path/to/chromedrive     options=add_argument("--ignore-certificate-errors")
