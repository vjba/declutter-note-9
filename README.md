# Declutter Samsung Galaxy Note 9

declutter-note-9 is a bash script I wrote to remove these apps that I didn't want on my device:

- Bixby
- Microsft apps
- Google apps (most of them)
- Facebook apps
- Edge widgets

**Note**: My device model is SM-N960-F build: `QP1A.190711.020.N960FXXU5ETF5` running the Samsung carrier-unlocked ROM, therefore the apps that are listed to be removed may vary on other device configurations. If they do fail on removal, the script continues.

## Requirements

1. `adb` package is installed
2. USB Debugging is enabled on your Note 9

**Note**: Follow the steps in ['Install `adb` and enable USB Debugging'](#install-adb-and-enable-usb-debugging) to install / enable

## Usage

1. Get the script with git:

   ```bash
   git clone https://github.com/vjba/declutter-note-9.git
   ```

   Or download it [here](https://github.com/vjba/declutter-note-9/blob/master/adb.sh)

2. Ensure `adb.sh` is has permission to execute:

   ```bash
   chmod 755 adb.sh
   ```

3. Run the script:

   ```bash
   ./adb.sh
   ```

   The terminal should output a series of `Success` statements when `adb` successfully uninstalls the application, and `Failure: reason` on unsuccessful uninstalls.

4. Enjoy a Note 9 without the bloatware!

## Customizing the script

If you would like to add other apps to the uninstallation process, review the apps installed on your device:

```bash
adb shell pm list packages --user 0 | sort
```

Or search for a specific package:

```bash
adb shell pm list packages --user 0 | grep example-package | sort
```

## Install `adb` and enable USB Debugging

1. Install `adb` ([Android Device Bridge](https://developer.android.com/studio/command-line/adb))

   **Note for Debian and Ubuntu users**: The `adb` package is already available from their respective offical repositories:

   ```bash
   apt install adb -y
   ```

2. Plug your Note 9 into your computer via data cable

   **Note**: There is no need to press **Allow** on 'Allow access to phone data'. This script will use USB debugging, not filesystem operations.

3. Allow USB Debugging
   1. Go to **Settings** > **About Phone** > **Software Information**
   2. Tap on **Build number** menu item 5 times to allow **Developer Options**
   3. Go to **Settings** > **Developer Options**
   4. Enable **USB debugging**. Confirm by pressing **OK**
4. Run `adb usb` in your terminal
5. Tap **Always allow from this computer** on the Note 9 popup titled 'Allow USB Debugging?' and then **OK**
