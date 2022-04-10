# Musala Test Project
## Scripts





# Saas Portal Integration Tests
## Scripts

* `npm run cypress:open` starts cypress test runner.
* `npm run cypress:run` run UI tests and generate Allure results.
* `npm run cypress:run-with-coverage` run UI tests and generate code coverage report in `coverage` folder. This script will **not** generate Allure report, because of a bug in the libraries. For this script to generate code coverage report the portal application should be ran with code instrumentation. See portal's README file for details. It will not work on production builds.

## Additional parameters
* Override cypress configuration (cypress.json) with external configuration file by adding `--env configFile=path/to/file`. E.g. `npm run cypress:run -- --env configFile=C:/custom-cypress-config.json`
* `
 --spec sbx-view-download-result.feature` run with config file for specific environment, specifying the path to the file e.g.: npm run cypress:open --config "./config/local-development.json"

## Allure test report
#### Requirements
* Java 8+
* Allure reporter: [java package](https://github.com/allure-framework/allure2#download) or [allure-commandline npm package](https://www.npmjs.com/package/allure-commandline).

#### Execution
`npm run cypress:run` run UI tests and generate Allure results in `allure-results` folder.
To view reports use:
* `allure serve` will generate report HTML and will serve it by starting local HTTP server and will open it default browser
* `allure generate` will generate report HTML
* `allure open` will serve already generated report by starting local HTTP server and open it open default browser

#### More information
https://github.com/Shelex/cypress-allure-plugin

