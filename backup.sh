#!/bin/bash

# 📁 Folder jiska backup lena hai
SOURCE="$HOME/Documents/sample"  # <-- is path ko apne hisaab se change karo

# 🗂️ Backup store kaha hoga
DEST="$HOME/Backups"

# 📅 Date format
DATE=$(date +%Y-%m-%d_%H-%M)

# 📦 Backup filename
FILENAME="backup_$DATE.tar.gz"

# 📁 Backup folder bana le agar nahi hai
mkdir -p "$DEST"

# 📦 Create backup
tar -czf "$DEST/$FILENAME" "$SOURCE"

# ✅ Confirmation
echo "✅ Backup done: $FILENAME saved in $DEST"
