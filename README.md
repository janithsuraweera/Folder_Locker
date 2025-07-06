# 🔒 Folder Locker

A simple and effective Windows batch script to lock and protect your important folders with password protection.

## 📋 Features

- **Password Protection**: Secure your folders with a customizable password
- **Hidden Protection**: Locks folders by making them appear as system folders
- **Easy to Use**: Simple batch script with user-friendly interface
- **No Installation Required**: Works on any Windows system
- **Lightweight**: Minimal resource usage

## 🚀 How It Works

The Folder Locker uses a clever technique to hide your folders:
1. Renames the target folder to a special Windows system folder name
2. Sets hidden and system attributes
3. Requires password to unlock and restore normal access

## 📁 File Structure

```
lock/
├── lockjhs.bat          # Main locker script
├── Locker/              # Created folder for storing files
└── README.md           # This file
```

## 🛠️ Usage Instructions

### First Time Setup
1. Run `lockjhs.bat` for the first time
2. A "Locker" folder will be created automatically
3. Place your important files inside the "Locker" folder

### Locking Your Folder
1. Double-click `lockjhs.bat`
2. Click "Y" when prompted to confirm locking
3. Your folder will be hidden and protected

### Unlocking Your Folder
1. Double-click `lockjhs.bat`
2. Enter the password when prompted
3. Your folder will be restored and accessible

## 🔐 Default Password

**Default Password**: `Password89`

⚠️ **Security Note**: For better security, consider changing the default password in the script.

## 📝 How to Change Password

To change the default password:
1. Open `lockjhs.bat` in a text editor
2. Find the line: `if NOT %pass%==Password89 goto FAIL`
3. Replace `Password89` with your desired password
4. Save the file

## ⚠️ Important Notes

- **Backup**: Always keep backups of important files
- **Password**: Remember your password - there's no recovery option
- **Windows Only**: This script works only on Windows systems
- **Administrator Rights**: May require administrator privileges on some systems

## 🔧 Technical Details

### Batch Script Features
- Uses VBScript for password input masking
- Implements confirmation dialogs
- Handles folder attributes (hidden, system)
- Uses Windows special folder names for camouflage

### Security Features
- Password-protected access
- Hidden folder attributes
- System folder disguise
- Access control modifications

## 🐛 Troubleshooting

### Common Issues

**Folder not unlocking:**
- Ensure you're using the correct password
- Check if the script has proper permissions

**Script not running:**
- Ensure you're on a Windows system
- Try running as administrator
- Check if antivirus is blocking the script

**Files not visible:**
- The folder is intentionally hidden when locked
- Use the unlock process to restore visibility

## 📞 Support

If you encounter any issues or have questions:
- Check the troubleshooting section above
- Ensure you're following the usage instructions correctly
- Verify your Windows system compatibility

## 👨‍💻 Developer Information

**Developer**: Janith Suraweera  
**Project**: Folder Locker  
**Language**: Windows Batch Script  
**Version**: 1.0

## 📄 License

This project is provided as-is for educational and personal use. Use responsibly and ensure you have proper authorization to lock folders on your system.

## 🔄 Version History

- **v1.0**: Initial release with basic locking functionality
  - Password protection
  - Hidden folder implementation
  - User-friendly interface

---

**⚠️ Disclaimer**: This tool is for personal use only. Always ensure you have proper authorization to lock folders on your system. The developer is not responsible for any data loss or misuse of this tool. 