# NVIM BASIC IDE

A lightweight and ready-to-use Neovim configuration designed to simplify the initial setup process. Ideal for quick deployments on any system, especially remote servers.

## Features

- **Telescope** – Fuzzy finder for better file navigation
- **Treesitter** – Improved syntax highlighting and code parsing
- **Neo-tree** – A modern file explorer for Neovim
- **Catppuccin** – Aesthetic and highly customizable theme
- **LSP (PHP & Lua)** – Language Server Protocol support for PHP and Lua
- **Harpoon** – Quick file navigation for power users
- **Git Integration** – Essential Git tools built-in
- **Auto-completion** – Smart code suggestions for better productivity

## Installation

### Prerequisites

Make sure Neovim is installed on your system. If Neovim is not installed, download it from:\
🔗 [Neovim Installation Guide](https://neovim.io/)

### Install NVIM BASIC IDE

Clone the repository and run the installation script:

```sh
git clone https://github.com/rafaqwe1/nvim-basic-ide.git
cd nvim-basic-ide
chmod +x install.sh
./install.sh
```

## Usage

Once installed, simply open Neovim:

```sh
nvim
```

## Keybindings & Configuration

- Plugin-specific keybindings can be found in their respective configuration files inside:
  ```
  src/lua/plugins/
  ```
- General Neovim settings (such as tab size and line numbers) are located in:
  ```
  src/lua/config/options.lua
  ```

Feel free to modify these files to suit your workflow!

## Contributions

Feel free to open issues or submit pull requests to improve this configuration.

## License

This project is licensed under the MIT License.

