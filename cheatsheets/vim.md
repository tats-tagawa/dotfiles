# vim / neovim

## Normal Mode

### Editing
| Keymap | Description |
| ------ | ----------- |
| `~` | Swap case |
| `gu` | Make lowercase |
| `gU` | Make uppercase |
| `!` | Filter to external program |
| `<` | Indent left |
| `<<` | Indent current line left |
| `r` | Indent left |
| `>>` | Indent right |
| `=` | Fix indentation |
| `==` | Fix indentation of current line |
| `ctrl-i` | Go to newer position in jump list |
| `ctrl-o` | Go to older position in jump list |

### Search and replace
| Keymap | Description |
| ------ | ----------- |
| `/pattern` | search for pattern |
| `?pattern` | search backward for pattern |
| `:s/old/new/` | replace old with new in current line |
| `:s/old/new/g` | replace all old with new in current line |
| `:s/old/new/gc` | replace all old with new in current line with confirmation |
| `:%s/old/new/g` | replace all old with new throughout file |
| `:%s/old/new/gc` | replace all old with new throughout file with confirmation |

### Copy / Paste
| Keymap | Description |
| ------ | ----------- |
| `#,#co#` | Copy from line #,# to # |
| | Ex. `-12,-10co2` |


## Insert mode

| Keymap | Description |
| ------ | ----------- |
| `ctrl-r` | Insert text from a registar |
| `ctrl-p` | Previous matching completion |
| `ctrl-n` | Next matching completion |

## Completion mode

| Keymap | Description |
| ------ | ----------- |
| `ctrl-x` `ctrl-p` | Context aware word completion, previous |
| `ctrl-x` `ctrl-n` | Context aware word completion, next |
| `ctrl-x` `ctrl-l` | Context aware line completion |
