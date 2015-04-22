switch_default_browser_on_osx
=============================

[Japanese README](README.ja.md)

A shell script and keyboard shortcut config for [Karabiner]( https://pqrs.org/osx/karabiner/index.html.en ) to switch the default browser on OS X Yosemite

This shell script execute [kerma/defaultbrowser](https://github.com/kerma/defaultbrowser) to swith the default browser. Thanks for a nice software!

This script then automatically press the button to switch default browser
in the dialog shown by Yosemite.

If you use this script with Karabiner, you can switch the default browser with just one keyboard action.

## Setup

### Install the shell script

Open Finder, select `Applications/Utilities/Terminal`, and execute the following commands.

```
mkdir ~/bin
curl -o ~/bin/switch_default_browser.sh https://raw.githubusercontent.com/hnakamur/switch_default_browser_on_osx/master/switch_default_browser.sh
chmod +x ~/bin/switch_default_browser.sh
```

### Setup the config file for Karabiner

If you want to switch the default browser with keyboard shorcuts using Karabiner, copy [private.xml](https://github.com/hnakamur/switch_default_browser_on_osx/karabiner_config) to `~/Library/Application Support/Karabiner`.

If you already have `private.xml` in `~/Library/Application Support/Karabiner`, copy the content (`vkopenurldef` and `item` elements) of [private.xml](https://github.com/hnakamur/switch_default_browser_on_osx/karabiner_config) to `~/Library/Application Support/Karabiner/private.xml`.

When you finish setup the config file, click the Karabiner icon on the task bar, then select `[Preferences...]` menu.

Select `[Change Key]` tab, and check all of the following items.

* Map right-⌘ + S to set default browser to Safari
* Map right-⌘ + C to set default browser to Google Chrome
* Map right-⌘ + F to set default browser to Firefox

### Permit applications to control your computer

You need to permit the applications to control your computer since
this shell script execute an Apple Script.

1. Select `System Preferences...` from the Apple menu.
2. Click `Security & Privacy`.
3. Select `Privacy` tab.
4. Select `Accessibility` in the list on the left, then click `Click the lock to make changes.`
5. When a dialog is shown, input your password and click `Unlock` button.
6. Press `+` (plus) button and choose applications to permit.
    * You need to choose an application to execute this shell script.
    * If you want to execute this shell script on the Terminal app, then select `Applications/Utilities/Terminal`.
    * If you want to execute this shell script on [iTerm2 - Mac OS Terminal Replacement](http://iterm2.com/), then select `Applications/iTerm`.
    * If you want to execute this shell script with Karabiner, then select `Applications/Karabiner`.

## License

This shell script is released under MIT license.
