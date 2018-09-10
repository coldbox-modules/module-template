# Ortus ColdBox Module Template

This template can be used to create Ortus based ColdBox Modules.

## Travis Automation

The `.travis.yml` is included for automation of your module.  It will clone, test, package, deploy your module to ForgeBox and the Ortus S3 accounts for API Docs and Artifacts.  So please make sure the following environment variables are set in your Travis configuration:

- `FORGEBOX_API_TOKEN` - The Ortus ForgeBox API Token
- `AWS_ACCESS_KEY` - The travis user S3 account
- `AWS_ACCESS_SECRET` - The travis secret S3

> Please contact the admins in the `#infrastructure` channel for these credentials.