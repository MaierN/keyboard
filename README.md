
# Tools

Build the keyboard layout using the Microsoft Keyboard Layout Creator (MSKLC): https://www.microsoft.com/en-us/download/details.aspx?id=102134

You may need to install the .NET Framework 3.5 (MSKLC installer will prompt you to do so if needed): https://www.microsoft.com/en-us/download/details.aspx?id=102134

# Edit

Edit the keyboard layout using MSKLC. However, to change the name and description of the layout, it is necessary to edit the file directly using a text editor. Make sure that the name contains at most 8 characters, and no spaces.

# Build/Install

After editing the keys, name and description, build the keyboard layout using MSKLC (`Project->Build DLL and Setup Package`). You can then install the layout by running the generated `setup.exe` file.
