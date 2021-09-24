const { execSync } = require('child_process');
const os = require('os');

try {
  execSync('./run-action.ps1', { stdio: 'inherit', shell: "pwsh" });
} 
catch(err) {
  process.exitCode = 1;
  const msg = err.toString().replace('%', '%25').replace('\r', '%0D').replace('\n', '%0A');
  process.stdout.write("::error::" + msg + os.EOL);
}