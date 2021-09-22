const { execSync } = require('child_process');

execSync('./run-action.ps1', { stdio: 'inherit', shell: "pwsh" });