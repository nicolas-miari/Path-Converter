Path Converter
==============

Mac OS X System service that scans selected text for MS Windows-style URL paths and converts them into Unix-friendly format.

Installation
------------

1. Build the project and copy the product (`PathConverter.service`) into the folder ~/Library/Services (You might first need to terminate any running instance of the service from the Activity Monitor app to do this. Activity Monitor can be found in Applications/Utilities).
2. Launch Terminal.app and run the command: `%/System/Library/CoreServices/pbs -update` to update the list of available services.

Additionally, you might need to launch System Preferences, click the 'Keyboard' icon, then the 'Shortcuts' tab, then select 'Services' in the list at the left side, and enable the checkboxes for "Convert File Path To Mac Format" (under the "Text" section).

Use
---

Select text containig a file path in Windows format, right click, chose either "Convert File Path to Mac Format **(smb)**" or  "Convert File Path to Mac Format **(cifs)**" (might be hidden under the "Services" submenu). Example: The text `\\host\folder` becomes either `smb://host/folder` or `cifs://host/folder`.
