# Setup and Use a Firewall (Kali & Windows)

## 🎯 Objective
To configure, test, and verify a firewall on both **Linux (Kali/Ubuntu)** and **Windows** systems by blocking insecure Telnet traffic (port 23) and ensuring SSH (port 22) remains open.

---

## ⚙️ System Requirements
### 🐧 Kali Linux / Ubuntu
- UFW (Uncomplicated Firewall)
- netcat (`nc`) or `telnet` installed for testing
- Sudo privileges

### 🪟 Windows 10 / 11
- Administrator access
- PowerShell 5.1 or later
- Windows Defender Firewall enabled

---

## 🧩 Files Included
| File Name | Description |
|------------|-------------|
| `firewall_kali.sh` | Automates firewall configuration and testing on Kali Linux |
| `firewall_windows.ps1` | PowerShell script for Windows Firewall configuration |
| `README.md` | Step-by-step documentation (this file) |
| `screenshots/` | Folder containing captured screenshots for proof of execution |

---

## 🐧 Linux Firewall Steps (UFW)

### 1️⃣ Check status and enable firewall
```bash
sudo ufw status verbose
sudo ufw enable
