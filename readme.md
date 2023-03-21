<p align="center">
	<img src="https://www.ortussolutions.com/__media/coldbox-185-logo.png">
	<br>
	<img src="https://www.ortussolutions.com/__media/wirebox-185.png" height="125">
	<img src="https://www.ortussolutions.com/__media/cachebox-185.png" height="125" >
	<img src="https://www.ortussolutions.com/__media/logbox-185.png"  height="125">
</p>

<p align="center">
	Copyright Since 2005 ColdBox Platform by Luis Majano and Ortus Solutions, Corp
	<br>
	<a href="https://www.coldbox.org">www.coldbox.org</a> |
	<a href="https://www.ortussolutions.com">www.ortussolutions.com</a>
</p>

----

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

## Welcome to ColdBox

ColdBox *Hierarchical* MVC is the de-facto enterprise-level [HMVC](https://en.wikipedia.org/wiki/Hierarchical_model%E2%80%93view%E2%80%93controller) framework for ColdFusion (CFML) developers. It's professionally backed, conventions-based, modular, highly extensible, and productive. Getting started with ColdBox is quick and painless.  ColdBox takes the pain out of development by giving you a standardized methodology for modern ColdFusion (CFML) development with features such as:

* [Conventions instead of configuration](https://coldbox.ortusbooks.com/getting-started/conventions)
* [Modern URL routing](https://coldbox.ortusbooks.com/the-basics/routing)
* [RESTFul APIs](https://coldbox.ortusbooks.com/the-basics/event-handlers/rendering-data)
* [A hierarchical approach to MVC using ColdBox Modules](https://coldbox.ortusbooks.com/hmvc/modules)
* [Event-driven programming](https://coldbox.ortusbooks.com/digging-deeper/interceptors)
* [Async and Parallel programming constructs](https://coldbox.ortusbooks.com/digging-deeper/promises-async-programming)
* [Integration & Unit Testing](https://coldbox.ortusbooks.com/testing/testing-coldbox-applications)
* [Included dependency injection](https://wirebox.ortusbooks.com)
* [Caching engine and API](https://cachebox.ortusbooks.com)
* [Logging engine](https://logbox.ortusbooks.com)
* [An extensive eco-system](https://forgebox.io)
* Much More

## Learning ColdBox

ColdBox is the defacto standard for building modern ColdFusion (CFML) applications.  It has the most extensive [documentation](https://coldbox.ortusbooks.com) of all modern web application frameworks.


If you don't like reading so much, then you can try our video learning platform: [CFCasts (www.cfcasts.com)](https://www.cfcasts.com)

## Ortus Sponsors

ColdBox is a professional open-source project and it is completely funded by the [community](https://patreon.com/ortussolutions) and [Ortus Solutions, Corp](https://www.ortussolutions.com).  Ortus Patreons get many benefits like a cfcasts account, a FORGEBOX Pro account and so much more.  If you are interested in becoming a sponsor, please visit our patronage page: [https://patreon.com/ortussolutions](https://patreon.com/ortussolutions)

### THE DAILY BREAD

 > "I am the way, and the truth, and the life; no one comes to the Father, but by me (JESUS)" Jn 14:1-12
