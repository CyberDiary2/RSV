# rsv

Read the Revised Standard Version (RSV) Bible directly from your terminal.

Basically a clone of KJV bible on your terminal made by LukeSmith.xyz but using the Catholic RSV instead of KJV.

## Usage

    usage: ./rsv [flags] [reference...]

      -l      list books
      -W      no line wrap
      -h      show help

      Reference types:
          <Book>
              Individual book
          <Book>:<Chapter>
              Individual chapter of a book
          <Book>:<Chapter>:<Verse>[,<Verse>]...
              Individual verse(s) of a specific chapter of a book
          <Book>:<Chapter>-<Chapter>
              Range of chapters in a book
          <Book>:<Chapter>:<Verse>-<Verse>
              Range of verses in a book chapter
          <Book>:<Chapter>:<Verse>-<Chapter>:<Verse>
              Range of chapters and verses in a book

          /<Search>
              All verses that match a pattern
          <Book>/<Search>
              All verses in a book that match a pattern
          <Book>:<Chapter>/<Search>
              All verses in a chapter of a book that match a pattern

## Examples

Read the entire book of Genesis:
```
./rsv Genesis
```

Read Genesis chapter 1:
```
./rsv Genesis:1
```

Read Genesis 1:1-5:
```
./rsv Genesis:1:1-5
```

Read specific verses (Genesis 1:1, 1:3, 1:5):
```
./rsv Genesis:1:1,3,5
```

Search for "love" in the entire Bible:
```
./rsv /love
```

Search for "love" in the book of John:
```
./rsv John/love
```

List all books:
```
./rsv -l
```

Interactive mode (just run without arguments):
```
./rsv
```

## Installation

Install `rsv` by running:

```
git clone <your-repository-url>
cd rsv
make
sudo make install
```

Or to build without installing:
```
make
./rsv Genesis:1:1
```

## Building

Dependencies for building:
- POSIX-compliant shell
- awk (any POSIX-compliant version)
- tar with gzip support
- make

## Uninstallation

To remove the installed binary:

```
sudo make uninstall
```

## License

Public domain
