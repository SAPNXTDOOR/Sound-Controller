# Sound Controller (Windows Audio & Volume Utility)

A lightweight, low-resource background utility built with AutoHotkey v2 that provides granular per-application volume control and instant audio output device switching.

## ✨ Features

* **Dynamic Configuration (`config.ini`)**

  * Change target applications and audio devices without recompiling the application.

* **Per-Application Volume Control**

  * Adjust the volume of configured applications in smooth 2% increments.

* **Active Window Volume Control**

  * Control the volume of whichever application is currently focused.

* **Output Device Switching**

  * Instantly switch between audio output devices with a single key press.

* **Custom Dark-Mode Tray Menu**

  * Clean system tray integration with native Windows Dark Mode support.

---

## 📂 Folder Structure

Your folder should be structured as follows:

```text
SoundController/
│
├── SoundController.exe       # Compiled AutoHotkey application
├── config.ini                # Auto-generated on first run
│
├── Nircmd/
│   └── nircmd.exe            # Required for volume control
│
└── SoundVolumeView/
    └── SoundVolumeView.exe   # Required for audio device switching
```

> **Note:** Download `nircmd.exe` and `SoundVolumeView.exe` from NirSoft before running the application.

---

## ⚙️ Configuration

On first launch, the application automatically creates a `config.ini` file in the same directory.

Example configuration:

```ini
[Applications]
App1=Spotify.exe
App2=opera.exe

[Devices]
Device1=IEM
Device2=Headset
Device3=Speakers
```

### Applications

Specify executable names for the applications whose volume you want to control.

### Devices

Specify the exact names of your audio output devices as they appear in Windows.

> **Important:** After making changes to `config.ini`, restart `SoundController.exe` for the new settings to take effect.

---

## ⌨️ Default Keybindings

### Volume Controls (2% Increments)

| Target        | Volume Up | Volume Down | Toggle Mute |
| ------------- | --------- | ----------- | ----------- |
| App 1         | F16       | F17         | F22         |
| App 2         | F18       | F19         | F23         |
| Active Window | F20       | F21         | F24         |

### Audio Output Switching

| Action                         | Keybinding |
| ------------------------------ | ---------- |
| Set Default Output to Device 1 | F13        |
| Set Default Output to Device 2 | F14        |
| Set Default Output to Device 3 | F15        |

---

## 🚀 Run at Startup

To automatically launch Sound Controller when Windows starts:

1. Right-click `SoundController.exe`.
2. Select **Create shortcut**.
3. Press **Win + R**.
4. Type:

```text
shell:startup
```

5. Press **Enter**.
6. Move the shortcut into the Startup folder.

---

## 🛠 Dependencies

This project relies on the following external utilities:

* NirCmd
* SoundVolumeView

Both are available from the NirSoft website.

---

## 📜 License

Feel free to fork, modify, and use this project in your own personal setups.

Contributions, improvements, and custom adaptations are welcome.
