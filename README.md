# LightNeuNet-MATLAB-Template

To use the LightNeuNet-MATLAB library, it is recommended to use this template as a starting point.

## Introduction to LightNetNet

LightNeuNet is a neural network framework built for academic use. For more information, visit https://github.com/RapDoodle/LightNeuNet-MATLAB.

## Usage

### Installation

To download the project, run `lnn install core` from the MATLAB terminal.

Supported plugins

- Quantum Finance Software Development Kit
  
  Project page: https://github.com/RapDoodle/Quantum-Finance-SDK-MATLAB

  For installation, run `lnn install qfsdk` from the MATLAB terminal.

**Note**: You must have Git installed and register it to your system path before using the script. Otherwise, you can type the following command in  Git Bash.

```bash
git clone https://github.com/RapDoodle/LightNeuNet-MATLAB.git include/lnn
```

If you do not have Git installed, you can [download](https://github.com/RapDoodle/LightNeuNet-MATLAB) the repository from GitHub, unzip it, and put all the files in `include/lnn`.

### Statup

To load all the libraries, run `lnn` from the MATLAB terminal.

**Note**: To only load a specific module, run `lnn load [alias]`. For example, `lnn load qfsdk` to only load the Quantum Finance SDK.

### Uninstall

To uninstall all packages, run `lnn clear`. To uninstall a specific plugin, run `lnn clear [alias]`. For example, run `lnn clear qfsdk` to only uninstall the Quantum Finance SDK.

**Note**: To update a module or plugin, the module must be removed using  `lnn clear [alias]` explicitly to avoid any conflict.

## License
This project is licensed under the GPLv3 license.