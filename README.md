# Declutter Samsung Galaxy Note 9

declutter-note-9 is a bash script I wrote to remove apps that I didn't want on my device (namely the annoying Bixby assistant launch on accidental Bixby button presses along with general bloatware)

**Note**: My device model is SM-N960-F running the official carrier-unlocked ROM, therefore the apps that are listed to be removed my vary on other device configurations.

## Usage

1. Ensure `adb.sh` is has permission to execute:

   ```bash
   chmod 755 adb.sh
   ```

2. Run the script:

   ```bash
   ./adb.sh
   ```

   The terminal should output a series of `Success` statements when `adb` successfully uninstalls the application, and `Failure: reason` on unsuccessful uninstalls.
3. Enjoy a Note 9 without the bloatware!

## Install `adb` and enable USB Debugging

1. Install `adb` ([Android Device Bridge](https://developer.android.com/studio/command-line/adb))

   **Note for Debian and Ubuntu users**: The `adb` package is already available from their respective offical repositories. Just run:

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
