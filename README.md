# nRF52840 VSCode Template

> Note : this is a fork of the original [nRF52840 VSCode Template](https://github.com/abferm/nrf52840-vscode), to work on a macOS implementation.

## Why ?

I was frustrated with the setup process for the nrf sdk and tools, so I made this sample project to make setup simple and automate installation of the sdk and cli tools.

## Environment Setup

### macOS

#### Pre-requisites

VSCode has to be installed, along with `make`, `wget`, and `git`.

`arm-gcc` toolchain has to be installed. You can install it using homebrew:

```bash
brew install arm-none-eabi-gcc
```

#### Setup

1. Open this directory in VSCode
2. Install the extensions listed below
3. Click the "Setup" button in the status bar (if VSCode action buttons is installed), or run `make setup` from the command line
4. Follow instructions in the terminal (some links should open in Safari, and Finder windows will open to make file copies easier)

### Linux

1. Install vscode, make, wget, git, tar, and unzip
2. Run `code ./` in this directory
3. Install extensions listed below
4. Click the "Setup" button in the status bar or run `make setup` from the command line

## VS Code extensions used

* [C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
* [VSCode Action Buttons (optional)](https://marketplace.visualstudio.com/items?itemName=seunlanlege.action-buttons)
