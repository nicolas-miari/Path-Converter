Path Converter
==============

Mac OS X System service that scans selected text for MS Windows-style URL paths and converts them into Unix-friendly format.

Installation
------------

1. Build the project and copy the product (`PathConverter.service`) into the folder ~/Library/Services.
2. Launch Terminal.app and run the command: `%/System/Library/CoreServices/pbs -update` to update the list of available services.

Use
---

Select text containig a file path in Windows format, right click, chose "Convert File Path to Mac Format" (might be hidden under the "Services" submenu). Example: The text `\\host\folder` becomes `//host/folder`.
