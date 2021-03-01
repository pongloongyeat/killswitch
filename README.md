<img align="left" width="64" height="64" src="icon.svg">
<h1 class="rich-diff-level-zero">KillSwitch</h1>

![screenshot](screenshot.png?raw=true)

Kills all applications. An attempt at making a simple one file app in Python.

## Running

Requires Python3, GTK3 and Granite. Run with `python3 KillSwitch` or set as executable and run via

```bash
chmod +x KillSwitch
./KillSwitch
```

## Installing

Recommended:

1. Install [AppEditor](https://github.com/donadigo/appeditor).
2. Download KillSwitch (recommended to store somewhere where it won't be accidentally deleted, i.e. in `~/Scripts` for instance).
3. Right click on KillSwitch and select "Create a Menu Entry".
4. Configure it however you want.

Manual:

1. Download KillSwitch (recommended to store somewhere where it won't be accidentally deleted, i.e. in `~/Scripts` for instance).
2. Create a `com.github.pongloongyeat.killswitch.desktop` file in `~/.local/share/applications` with the following

```
[Desktop Entry]
Type=Application
Name[en_US]=KillSwitch
Exec=/path/to/KillSwitch
Icon=/path/to/icon.svg
```
