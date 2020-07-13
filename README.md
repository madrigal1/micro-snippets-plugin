This project was originally created by [boombuler](https://github.com/boombuler)

## Introduction

This is a simple snippet plugin for the [Micro](https://github.com/zyedidia/micro) editor.

The plugin comes with some snippet files which are taken from [vim-snippets](https://github.com/honza/vim-snippets)

Have a look at those repositories for their license and additional information!

Other [plugins](https://github.com/micro-editor/plugin-channel) for Micro editor


## Check which version of micro editor you have.

```bash
micro --version
```

## Install Snippet Plugin

### From Micro Version 1

<kbd>Ctrl</kbd> <kbd>e</kbd>

`plugin install snippets`

## To view the Help file for this plugin, inside micro editor

When the plugin is installed, to view the help file from inside micro editor typein below:

<kbd>Ctrl</kbd> <kbd>e</kbd>

`help snippets`

# Micro Version 2 changed API for plugins

Run the following command on your terminal

`micro -plugin install snippets`


# This is still being converted and is not ready for use

# MacOS Alt keys not working in micro editor printing characters to the buffer then change the settings below

## Iterm2

The iTerm2 terminal has much better mouse support as well as better handling of key events. For best keybinding behavior, choose `xterm defaults` under the drop down menu `Preferences->Profiles->Keys->Presets...`.

To get the left `Alt` key working in micro editor change this setting below:

Go to `Preferences->Profiles->Keys` the option for `Left option key` and tick `+Esc` instead of `normal`.

## MacOS Default terminal

Be sure to tick the option `Use Option key as Meta key` near the bottom of the screen, under `Preferences->Profiles->Keyboard` to use <kbd>option</kbd> as <kbd>alt</kbd>.

