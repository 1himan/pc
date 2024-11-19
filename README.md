# Running AutoHotkey Script at Windows 11 Startup

## Method: Startup Folder Approach

### Prerequisites
- Windows 11 installed
- AutoHotkey script (.ahk file)
- AutoHotkey software installed on your system

### Step-by-Step Guide

1. **Open Startup Folder**
   - Press `Win + R` to open the Run dialog
   - Type `shell:startup`
   - Press `Enter`

2. **Create Shortcut**
   - Right-click in the Startup folder
   - Select `New > Shortcut`
   - Browse and select your .ahk script file
   - Click `Next`
   - Name the shortcut (optional)
   - Click `Finish`

3. **Verify Startup**
   - Restart your computer
   - Confirm the script runs automatically after login

### Troubleshooting
- Ensure AutoHotkey is installed
- Check script for any execution errors
- Verify script permissions

### Additional Tips
- Use absolute file paths in your script
- Test script manually before setting as startup item
