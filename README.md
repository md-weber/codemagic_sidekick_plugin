# Codemagic Sidekick Plugin
This is a basic plugin that allows you to create codemagic ci/cds with ease.
The idea is to hide all the complex things into a specific CLI that enables users
to initialize a codemagic.yaml file. You have the options to create workflows update workflows etc.

If you find a bug or have a feature request please feel free to file an issue.

## Getting Started
1. Create a own [Sidekick CLI](https://github.com/phntmxyz/sidekick) by following the tutorial [here](https://github.com/phntmxyz/sidekick#getting-started).
2. Install the Codemagic Sidekick Plugin

Example:
```sh
  dart pub global activate sidekick
  sidekick init

  // Follow the installation script - we assume a new CLI `sd`
  // Navigate to the new cli repo
  // Initilization of the new CLI and installs it globally
  ./sd sidekick install-global

  // Install the plugin
  sd sidekick plugins install -s git https://github.com/md-weber/codemagic_sidekick_plugin
```

## Roadmap
- [x] Script to init the project for Codemagic
- [ ] Script to create workflows
- [ ] Script to update workflows
  - [ ] Update build machine and provide options
  - [ ] Update Env Groups