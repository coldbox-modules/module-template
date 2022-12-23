# Ortus ColdBox Module Template

This template can be used to create Ortus based ColdBox Modules.  To use, just click the `Use this Template` button in the github repository: https://github.com/coldbox-modules/module-template and run the setup task from where you cloned it.

```bash
box task run taskFile=build/SetupTemplate
```

The `SetupTemplate` task will ask you for your module name, id and description and configure the template for you! Enjoy!

## Directory Structure

The root of the module is the root of the repository. Add all the necessary files your module will need.

* `.github/workflows` - These are the github actions to test and build the module via CI
* `build` - This is the CommandBox task that builds the project.  Only modify if needed.  Most modules will never modify it. (Modify if needed)
* `test-harness` - This is a ColdBox testing application, where you will add your testing files, specs etc.
* `.cfformat.json` - A CFFormat using the Ortus Standards
* `.cflintrc` - A CFLint configuration file according to Ortus Standards
* `.editorconfig` - Smooth consistency between editors
* `.gitattributes` - Git attributes
* `.gitignore` - Basic ignores. Modify as needed.
* `.markdownlint.json` - A linting file for markdown docs
* `box.json` - The box.json for YOUR module.  Modify as needed.
* `changelog.md` - A nice changelog tracking file
* `ModuleConfig.cfc` - Your module's configuration. Modify as needed.
* `readme.md` - Your module's readme. Modify as needed.
* `server-xx@x.json` - A set of json files to configure the major engines your modules supports.

## Test Harness

The test harness is created to bootstrap your working module into the application `afterAspectsLoad`.  This is done in the `config/ColdBox.cfc`.  It includes some key features:

* `config` - Modify as needed
* `tests` - All your testing specs should go here.  Please notice the commented out ORM fixtures.  Enable them if your module requires ORM
* `.cfconfig.json` - A prepared cfconfig json file so your engine data is consistent.  Modify as needed.
* `.env.sample` - An environment property file sample.  Copy and create a `.env` if your app requires it.


## API Docs

The build task will take care of building API Docs using DocBox for you but **ONLY** for the `models` folder in your module.  If you want to document more then make sure you modify the `build/Build.cfc` task.

## Github Actions Automation

The github actions will clone, test, package, deploy your module to ForgeBox and the Ortus S3 accounts for API Docs and Artifacts.  So please make sure the following environment variables are set in your repository. ** Please note that most of them are already defined at the org level **

* `FORGEBOX_TOKEN` - The Ortus ForgeBox API Token
* `AWS_ACCESS_KEY` - The travis user S3 account
* `AWS_ACCESS_SECRET` - The travis secret S3

> Please contact the admins in the `#infrastructure` channel for these credentials if needed
