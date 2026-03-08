# 📁 File Manager Bash Script

A simple, interactive command-line File Manager built entirely in **Bash**. It allows users to create, read, edit, and delete files and folders — all from a clean menu interface in the terminal.

---

## 🖥️ Demo

```
=====================================
         FILE MANAGER MENU           
=====================================
a) Create a New File or Folder
b) Read Contents of a File
c) Edit a File
d) Delete a File or Folder
e) Exit
=====================================
Please choose an option (a/b/c/d/e):
```

---

## ✨ Features

- **Create** files or folders at any specified path
- **Read** file contents with automatic read-only permission enforcement
- **Edit** files with three modes:
  - Append content
  - Overwrite content
  - Open in `nano` text editor
- **Delete** files or folders (including non-empty directories)
- Clean menu-driven interface that loops until you choose to exit
- Informative `[SUCCESS]`, `[INFO]`, and `[ERROR]` messages

---

## 📋 Requirements

- A Unix-based system (Linux / macOS)
- Bash shell (`bash --version`)
- `nano` (for the editor option) — usually pre-installed

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Jilpatel18/File-Manager-Bash.git
cd File-Manager-Bash
```

### 2. Give Execute Permission

```bash
chmod +x file_manager.sh
```

### 3. Run the Script

```bash
./file_manager.sh
```

---

## 📖 Usage Guide

| Option | Action | Description |
|--------|--------|-------------|
| `a` | Create | Creates a new file (`touch`) or folder (`mkdir -p`) |
| `b` | Read | Sets file to read-only (`chmod 444`) and displays contents |
| `c` | Edit | Sets write permission (`chmod 600`) and lets you modify the file |
| `d` | Delete | Removes a file or folder using `rm -r` |
| `e` | Exit | Exits the script gracefully |

---

## 📂 Project Structure

```
File-Manager-Bash/
│
├── file_manager.sh       # Main bash script
├── LICENSE               # MIT License
└── README.md             # Project documentation
```

---

## ⚠️ Notes

- The **Read** option sets file permissions to **read-only for all users** (`444`). You may need to manually reset permissions afterwards if needed.
- The **Edit** option sets permissions to **owner write-only** (`600`) before editing.
- The **Delete** option uses `rm -r`, which permanently deletes folders and their contents — use with caution!

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m "Add your feature"`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

---

## 👤 Author

**Jil Patel**  
GitHub: [@Jilpatel18](https://github.com/Jilpatel18)

---

## 📄 License

MIT License — Copyright (c) 2025 **Jil Patel**

See the [LICENSE](LICENSE) file for full details.
