# Copilot Instructions for AI Coding Agents

## Project Overview

- This is a template for creating ColdBox modules, following conventions for modular, testable, and maintainable  ColdFusion (CFML) code.
- The root directory is the module root. Key files: `ModuleConfig.cfc` (module config), `box.json` (metadata), and `build/Build.cfc` (build logic).
- The `test-harness` app is a full ColdBox app for module testing, with specs in `test-harness/tests/specs`.

## Architecture & Patterns

- Modules are installed into the ColdBox's application `modules` or `modules_app` convention, they can alo be hierarchical.
- Modules are self-contained: all code, config, and tests live under the module root.
- Business logic and public APIs go in the `models/` directory. Only this folder is documented by default via DocBox.
- Build and release automation is handled by CommandBox tasks in `build/`.
- TestBox is used for all testing, with specs organized under `test-harness/tests/specs`.
- Engine support is managed via `server-*.json` files for different CFML engines.

## Developer Workflows

- **Setup:** Run `box task run taskFile=build/SetupTemplate` to initialize a new module from this template.
- **Build:** Use `box task run build/Build.cfc` for building and packaging.
- **Test:** Use `box testbox run bundles=test-harness/tests` (or run the VS Code task `Run TestBox Bundle`).
- **API Docs:** Generated via the build task, only for `models/` by default.
- **CI/CD:** GitHub Actions in `.github/workflows` automate test, build, and deploy. Environment variables (e.g., `FORGEBOX_TOKEN`, `AWS_ACCESS_KEY`) are required for deployment.

## Conventions & Customizations

- Follow Ortus/ColdBox standards for formatting (`.cfformat.json`), linting (`.cflintrc`), and markdown (`.markdownlint.json`).
- Extend or customize build/test logic by editing files in `build/`.
- Add new engine support by copying and editing `server-xx@x.json` files.
- Place all module-specific tests/specs in `test-harness/tests/specs`.
- For ORM-based modules, enable ORM fixtures in the test harness as needed.

## Integration Points

- Modules are loaded into the test harness via `config/ColdBox.cfc` after aspects load.
- External dependencies are managed via `box.json` and ForgeBox, both in the root and the test harness.
- CI/CD integrates with ForgeBox and AWS S3 for publishing and docs if this becomes an Ortus module.

## Examples

- To add a new model: place CFC in `models/`, document with DocBox comments.
- To add a test: create a spec in `test-harness/tests/specs/`.
- To add a build step: edit `build/Build.cfc`.
- To add a new handler: create a CFC in `handlers/` and create an integration test in `test-harness/tests/specs/integration/`.
- To add a new interceptor create them in the `interceptors/` directory and register them in the `ModuleConfig.cfc`.
- To add a new view: create a file in `views/`
- To add a new layout: create a file in `layouts/`

## References

- See `README.md` for full setup, workflow, and learning resources and document the module here but first removing all the boilerplate text.
- See `.github/workflows/` for CI/CD automation details.
- See `build/Build.cfc` and `test-harness/tests/specs/` for build and test patterns.
