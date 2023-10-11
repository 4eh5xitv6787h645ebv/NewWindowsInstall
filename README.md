## Windows Rebirth Ritual: The Ultimate Fresh Start Script!

This script automates various Windows configuration and software installation tasks. It's designed to streamline the setup process for a fresh Windows installation or to quickly configure multiple systems.

### Features:
- **Configuration**: Sets the region and time zone to "en-AU" and "W. Australia Standard Time" respectively.
- **Activation**: Activates Windows and Office using a method from [massgrave.dev](https://massgrave.dev/get).
- **Winget**: Updates or installs the Windows Package Manager (Winget) from [Microsoft's GitHub releases](https://github.com/microsoft/winget-cli/releases/latest).
- **VisualCppRedist Installation**: Downloads and installs the latest Visual C++ Redistributable from [abbodi1406's GitHub releases](https://github.com/abbodi1406/vcredist/releases/latest).
- **Winget Software Installation**: Installs various software packages using Winget.
- **Winutil Execution**: Executes the Winutil tool from [christitus.com](https://christitus.com/win).
- **Desktop Customization**: Disables the Recycle Bin icon on the desktop.
- **Ublock Installation**: Opens the [Ublock Origin add-on page](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) for Firefox.

### How to Run:

Execute as Admin in Powershell using the following command:

PowerShell -ExecutionPolicy Bypass -File "[location of file]"

Replace '[location of file]' with the path to the script.
