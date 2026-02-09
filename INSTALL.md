# RSV Bible Terminal Reader - Installation Instructions

## Quick Start

You have two options to use this program:

### Option 1: Use the Pre-built Executable

The `rsv` file is already built and ready to use:

```bash
chmod +x rsv
./rsv Genesis:1:1
```

### Option 2: Build from Source

If you want to rebuild or modify the program:

```bash
make clean
make
./rsv Genesis:1:1
```

## System Installation

To install system-wide (requires sudo):

```bash
sudo make install
```

This will install `rsv` to `/usr/local/bin/` so you can run it from anywhere:

```bash
rsv John:3:16
```

## Uninstall

To remove the system-wide installation:

```bash
sudo make uninstall
```

## Files Included

- **rsv** - Pre-built self-contained executable (ready to use)
- **rsv.sh** - Main shell script
- **rsv.awk** - AWK processing script
- **rsv.tsv** - RSV Bible text data (tab-separated)
- **Makefile** - Build script
- **README.md** - Full documentation

## Usage Examples

```bash
# Show help
./rsv -h

# List all books
./rsv -l

# Read Genesis chapter 1
./rsv Genesis:1

# Read a specific verse
./rsv John:3:16

# Read a range of verses
./rsv Genesis:1:1-5

# Read specific verses
./rsv Psalms:23:1,3,6

# Search for "love" in all of John
./rsv John/love

# Search entire Bible for "faith"
./rsv /faith

# Interactive mode
./rsv
```
