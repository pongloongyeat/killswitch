<img align="left" width="64" height="64" src="icons/icon.svg">
<h1 class="rich-diff-level-zero">KillSwitch</h1>

![screenshot](app_screenshot.png?raw=true)

Inspired by [killall](https://www.reddit.com/r/MacOS/comments/lt1vlh/a_simple_automator_app_with_an_intuitive_icon/). Special thanks to [hanaral](https://github.com/hanaral) for the icon!

Kills all applications. An attempt at making a simple one file app in Python.

## Running

Requires [GTK+-3.0](https://www.gtk.org/), [Granite](https://github.com/elementary/granite/), [PyGObject](https://pygobject.readthedocs.io/en/latest/) and [Python3](https://www.python.org/). Right click on KillSwitch and select 'Run' or run via `python3 KillSwitch`.

## Adding to Applications Menu

<b>With [AppEditor](https://github.com/donadigo/appeditor) (recommended):</b>

1. Install [AppEditor](https://github.com/donadigo/appeditor).
2. Download KillSwitch (store it somewhere where it won't be accidentally deleted, i.e. in `~/Scripts` for instance).
3. Right click on KillSwitch and select "Create a Menu Entry".
4. Configure it however you want.

<b>Manual:</b>

1. Download KillSwitch (store it somewhere where it won't be accidentally deleted, i.e. in `~/Scripts` for instance).
2. Create a `com.github.pongloongyeat.killswitch.desktop` file in `~/.local/share/applications` with the following

```
[Desktop Entry]
Type=Application
Name=KillSwitch
Exec=/path/to/KillSwitch
Icon=/path/to/icon.svg
```

## Debugging

Under the `AppInfo` class, comment out `os.system("pkill {}".format(self.exec_name))` and run via Terminal. Maybe a future, more feature-rich version that's not intended to be written in a single file can have a debugging flag/mode.
