# ShelfHTM
Base64-powered single file HTML Compiler.
Standard-combatible implementation of ShelfHTM in Shell and Python3.
## Requirements
- python3
- find (Installed on most systems)
- file (Installed on most systems)
- coreutils (Installed on most systems)
- base64 (Installed on most systems)
## Usage
`./build.sh <HTMSRC> <HTMBIN> <ASSETDIR>`

`HTMSRC` is a directory with HTML files inside. These files can have shelf:-URIs inside.

`HTMBIN` is a directory where compiled HTML files are moved in.

`ASSETDIR` is a directory that contains the assets.
## Usage in HTMSRC files
For example, in `<IMG>`, src can be `shelf:image.jpg` and the compiled file will include the image.
## NOTE
Needs more testing.
