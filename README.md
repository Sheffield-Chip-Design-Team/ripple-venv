## Project Environment Setup (Linux (or WSL) / macOS)

### Part 1 - Tool and Environment Setup
See Part 1 in [project-venv](https://github.com/Sheffield-Chip-Design-Team/project-venv) for instructions on how to install required chip design tools if you have not already installed them.
For this project, you will need:
  - verilator

### Clone this project repo into a folder

```bash
mkdir ripple #Can be any name of your choice
cd ripple
git clone https://github.com/Sheffield-Chip-Design-Team/ripple-venv.git
cd ripple-venv
```
Each command should print version information or an installation path.

### Part 2 - Project Environment Setup

### 1) Create activate a Python virtual environment (venv)

Then create the virtual environment. This keeps this project isolated from other projects:
```bash
python3 -m venv .venv-ripple
```
To use the virtual environment, activate it. Do this every time you start a new terminal:
```bash
source .venv-ripple/bin/activate
```
If you do not activate the virtual environment, you may accidentally use the system-wide Python environment instead.

Note:
If you move to a different project, make sure you activate that project's virtual environment instead.
First deactivate the current one:
```bash
deactivate
```
Then run the same `source` command for the new project's virtual environment.

### 2) Install Coraltb
```bash
./scripts/install_coraltb.sh
```

### 3) Create Workspace
```bash
./scripts/create_workspace.sh
```
### 4) Run environment checks 

This script checks that you have the environemnt properly setup.

```bash
./scripts/env_check.sh
```

## Notes
All of the checks should appear as `[OK]`. If anything fails, refer to [project-venv](https://github.com/Sheffield-Chip-Design-Team/project-venv) for installing the oss-cad-suite.

- If you are using VS Code Remote (WSL), it may inject this project's `venv/bin` into `PATH`. This is normal, but if you suspect a path issue, check the active tools with:

  ```bash
  which python3
  which cocotb-config
  ```
  
  These commands help you confirm which Python environment is active.
  
### 5) VS Code with WSL

If you are using WSL, open the project from VS Code and install this extension first:

![alt text](doc/image.png)

Then click the button in the bottom-left corner to open a remote WSL session:

![alt text](doc/image-1.png)
![alt text](doc/image-2.png)

You can now use VS Code inside WSL.

You will also need a Verilog linter extension. The current recommended one is:

![alt text](doc/image-3.png)

After installing it, open the extension settings and go to the linting section.

### Note for native Ubuntu users

If you are already using Ubuntu 24.04 on a native machine, skip the WSL steps and start from section 0.1.
![alt text](doc/image-4.png)





