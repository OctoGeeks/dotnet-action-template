# .Net Action Template
This repo is a template you can use to write your own custom GitHub Action using .Net/C#.

# Why this and not a docker-based action
The standard advice is if you want to write an action in a language other than the few with built-in support, is to use a docker-based action, where you can install all the runtime dependencies your language/tech stack requires.

For a .Net based action you could certainly go docker-based, but this repo uses a different approach that doesn't involve docker. Because you can compile a .Net app into a self-contained binary, you can run it without docker and not impose any dependencies on the consumers of your action. Simply include the binaries in the repo, and invoke them directly from the action manifest.

The has a few potential benefits vs a docker-based .Net action:

1. No need to include the extra complexity of docker. If you use docker often this may not be a big deal, but if you're not familiar with docker this may be a large benefit.

2. Sometimes people use self-hosted runners that don't have docker available in their environment, and can't use docker based actions.

3. Docker-based actions can only run on linux-based runners, whereas a .Net self-contained app can be run on linux + windows + mac.

# How to use this repo

1. Click the Use This Template button to create your own repo as a copy of this (similar to forking, but doesn't have a fork relationship back to the original repo).
2. Modify the action.yml to give your action a name/description, and setup any inputs you need.
3. Modify the code in the src folder to do whatever you want your custom action to do, this is a .Net 5 Console App (C#).
4. Use the [DotNetActionsToolkit NuGet package](https://www.nuget.org/packages/DotnetActionsToolkit/) (already included in the sample project) to interact with the the GitHub Actions environment. This is a port of the [actions/toolkit](https://github.com/actions/toolkit) npm packages that are used when developing javascript/typescript based actions. The goal was to make developing a .Net based action as similar an experience as possible to developing a JavaScript based action. You will use this NuGet package to get workflow inputs, set outputs, log info/warnings/errors, etc.
5. Modify the build.ps1 file in the root of the repo to use the proper path/name to your sln file.
6. Modify the run-action.ps1 file in the root of the repo to use the proper path/name of your binaries.
7. Run build.ps1 to build a windows + linux + mac version of your action, and be sure to commit the resulting binaries along with your code changes.
8. Modify .github/workflows/ci.yml to pass the appropriate inputs and check the relevant state to test your action.