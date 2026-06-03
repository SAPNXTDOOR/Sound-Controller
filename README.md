content = """# Windows Audio & Volume Controller

A lightweight, low-resource background utility built with [AutoHotkey v2](https://www.autohotkey.com/) that provides granular per-application volume control and instant audio output device switching.

## ✨ Features
- **Per-App Volume Control**: Change the volume of specific apps (Spotify, Opera GX) or whatever window is currently active without affecting master volume.
- **Fine-Tuned Adjustments**: Volume increments in 2% steps for perfect audio balancing.
- **Output Device Switching**: Instantly swap your Default Playback Device (e.g., Speakers to Headphones) with a single keystroke.
- **Custom Dark-Mode Tray Menu**: Clean, customized system tray menu that natively supports Windows Dark Mode.

## ⌨️ Default Keybindings

### Volume Controls (2% increments)
| Application | Volume Up | Volume Down | Toggle Mute |
| :--- | :---: | :---: | :---: |
| **Spotify** | `F16` | `F17` | `F22` |
| **Opera GX** | `F18` | `F19` | `F23` |
| **Active Window** | `F20` | `F21` | `F24` |

### Audio Output Switching
| Action | Keybinding |
| :--- | :---: |
| Set Default Device to **Speakers** | `F25` |
| Set Default Device to **Headphones** | `F26` |

> **Note:** F16-F26 are used for maximum compatibility with macro pads, QMK/VIA programmable keyboards, and dedicated media keys. You can easily map these triggers to your specific hardware.

## ⚙️ Prerequisites
This script utilizes two excellent command-line tools from NirSoft to handle the Windows audio mixing under the hood. **These must be placed in the exact same folder as the `.exe` or `.ahk` script.**

1. [NirCmd](https://www.nirsoft.net/utils/nircmd.html) (Used for volume control)
2. [SoundVolumeView](https://www.nirsoft.net/utils/sound_volume_view.html) (Used for device switching)

## 🚀 Installation & Setup

1. Download the latest compiled `.exe` from the Releases tab (or clone the repository to run the `.ahk` script directly).
2. Download `nircmd.exe` and `SoundVolumeView.exe` from the links above.
3. Place all three files together in a dedicated folder.
4. Run the executable!

### Run on Startup
If you want this utility to launch automatically when you boot your PC:
1. Right-click the `.exe` and select **Create shortcut**.
2. Press `Win + R`, type `shell:startup`, and hit Enter.
3. Move the **shortcut** into the Startup folder that opens. 
*(It will now appear in your Task Manager's "Startup apps" tab!)*

## 🛠️ Customization 
If you are running the source `.ahk` file and want to tweak it for your setup:
* **Device Names:** If your devices are named differently in Windows, open `SoundVolumeView`, find the exact name of your output device under the "Name" column, and replace `"Speakers"` or `"Headphones"` in the script.
* **Target Applications:** You can swap `Spotify.exe` or `opera.exe` for any other application executable (e.g., `discord.exe`).

## 📝 License
Feel free to fork, modify, and use this script in your own personal setups!
"""

with open("README.md", "w", encoding="utf-8") as f:
    f.write(content)
print("README.md generated successfully.")
