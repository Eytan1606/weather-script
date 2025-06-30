
# 🔧 Bash Utilities Collection

This repository includes a set of Bash scripts created as part of a course project. The scripts offer a variety of utilities for working with files, system info, and user interaction. Each script is modular, tested, and includes examples.

---

## 📁 Scripts Overview

### `add_prefix.sh`
**Description:** Adds a prefix to all `.txt` files in a directory.  
**Inputs:**
- `prefix`: The prefix to add to each file.
- `directory` (optional): The directory containing the `.txt` files. Defaults to current directory.
**Usage:**  
```bash
./add_prefix.sh <prefix> [directory]
```
**Example:**  
```bash
./add_prefix.sh new_ ./docs
```
**Author:** Lian Ashkenazi – 328436001

---

### `reminder.sh`
**Description:** Sets a timed reminder with a custom message.  
**Inputs:**
- `delay_in_seconds`: How many seconds to wait before showing the message.
- `message`: The message to display.
**Usage:**  
```bash
./reminder.sh <delay_in_seconds> "Your message"
```
**Example:**  
```bash
./reminder.sh 60 "Take a break!"
```
**Author:** Lian Ashkenazi – 328436001

---

### `sortFile.sh`
**Description:** Sorts lines in a text file alphabetically. Can optionally output to another file.  
**Inputs:**
- `input_file`: The file to be sorted.
- `output_file` (optional): File to save sorted output. If not provided, prints to terminal.
**Usage:**  
```bash
./sortFile.sh <input_file> [output_file]
```
**Example:**  
```bash
./sortFile.sh names.txt sorted_names.txt
```
**Author:** Lian Ashkenazi – 328436001

---

### `wordCount.sh`
**Description:** Displays the 30 most frequent words in a file, ignoring case and punctuation.  
**Inputs:**
- `filename`: The file to analyze.
**Usage:**  
```bash
./wordCount.sh <filename>
```
**Example:**  
```bash
./wordCount.sh article.txt
```
**Author:** Lian Ashkenazi – 328436001

---

### `batterystatus.sh`
**Description:** Prints battery charge percentage and charging status for BAT0 and BAT1.  
**Inputs:** None  
**Usage:**  
```bash
./batterystatus.sh
```
**Author:** Andreu Pachili – 323994616

---

### `count_word.sh`
**Description:** Counts how many times a specific word appears in a file (case-sensitive).  
**Inputs:**
- `word`: The word to count.
- `file`: The file to search.
**Usage:**  
```bash
./count_word.sh <word> <file>
```
**Example:**  
```bash
./count_word.sh hello notes.txt
```
**Author:** Andreu Pachili – 323994616

---

### `open_ports.sh`
**Description:** Scans ports 1–1024 on a given IP address to detect open ones using `nc`.  
**Inputs:**
- `IP_ADDRESS`: The IP to scan.
**Usage:**  
```bash
./open_ports.sh <IP_ADDRESS>
```
**Example:**  
```bash
./open_ports.sh 192.168.0.1
```
**Author:** Andreu Pachili – 323994616

---

### `uptime.sh`
**Description:** Displays system uptime in days, hours, minutes, and seconds.  
**Inputs:** None  
**Usage:**  
```bash
./uptime.sh
```
**Author:** Andreu Pachili – 323994616

---

### `weather.sh`
**Description:** Retrieves current weather for a given city using the [wttr.in](https://wttr.in) API.  
**Inputs:**
- `city-name`: The city to get weather for.
**Usage:**  
```bash
./weather.sh <city-name>
```
**Example:**  
```bash
./weather.sh Tel-Aviv
```
**Author:** Eytan Caballero – 214180036

---

### `compare_files.sh`
**Description:** Compares two files and prints whether they are identical, and if not — shows the differences.  
**Inputs:**
- `file1`: The first file.
- `file2`: The second file.
**Usage:**  
```bash
./compare_files.sh <file1> <file2>
```
**Example:**  
```bash
./compare_files.sh fileA.txt fileB.txt
```
**Author:** Eytan Caballero – 214180036

---

### `count_by_extension.sh`
**Description:** Counts how many files of a certain extension exist in a given directory.  
**Inputs:**
- `extension`: File extension to search (e.g., `txt`).
- `directory` (optional): Directory to search. Defaults to current directory.
**Usage:**  
```bash
./count_by_extension.sh <extension> [directory]
```
**Example:**  
```bash
./count_by_extension.sh sh ./scripts
```
**Author:** Eytan Caballero – 214180036

---

## 👩‍💻 Authors and Contributions

| Script                   | Author            | ID         |
|--------------------------|-------------------|------------|
| add_prefix.sh            | Lian Ashkenazi    | 328436001  |
| reminder.sh              | Lian Ashkenazi    | 328436001  |
| sortFile.sh              | Lian Ashkenazi    | 328436001  |
| wordCount.sh             | Lian Ashkenazi    | 328436001  |
| batterystatus.sh         | Andreu Pachili    | 323994616  |
| count_word.sh            | Andreu Pachili    | 323994616  |
| open_ports.sh            | Andreu Pachili    | 323994616  |
| uptime.sh                | Andreu Pachili    | 323994616  |
| weather.sh               | Eytan Caballero   | 214180036  |
| compare_files.sh         | Eytan Caballero   | 214180036  |
| count_by_extension.sh    | Eytan Caballero   | 214180036  |

---

## ⚙️ How to Run

Make scripts executable with:
```bash
chmod +x script_name.sh
```

Then execute with:
```bash
./script_name.sh [arguments...]
```

---

## 📄 License

This project is for academic and personal use only.
