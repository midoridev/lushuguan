Intoduction
===========
Vi(m) is a console based text editor that only uses the keyboard. It is powerful, but unintuitive. Because Vi is not very beginner friendly,
I have put together what I believe to be the most practical/common
commands for general use. 

Although it is not the only option, I still recommend using Vi or Vim on Ubuntu as often as possible, as it is much faster and safer than using
gedit, and will help you to become familliar with its quirks.

<small>[Jump to Commands](#commands)</small>

Vi vs. Vim
----------
Vi (short for `visual`) is a visual text editor that has been around for quite a long time. It is available on many Linux systems by default.
Vim (Vi Improved) is an open-source version of Vi that introduces new and more powerful features, such as context highlighting and arrow-key
navigation while in Insert mode (see below). Depending on your system, Vim may be pre-installed, and the `vi` command may even be aliased to
run Vim instead. All of the commands in this cheat sheet are supported by both Vi and Vim.

The version of Vim that is preinstalled on your system may not have certain features (for example, Ubuntu 16.04's default installation of Vim
lacks context highlighting). To acquire such features, run `sudo apt install vim` or the appropriate install for your system's package manager.

Command mode and Insert mode
----------------------------
Because Vi must be fully functional with the keyboard and within a terminal window, it implements two different modes for operation.
In Command mode, keystrokes register as commands instead of entering text. More commands can be accessed by typing a colon : before the
rest of the command, and the command will execute when you press enter. The commands below will begin with a colon if they are one of
these commands. Other commands will execute immediately.

Insert mode is the editing/text entry mode for Vi. Characters entered are added to the file, like a typical text editor. If you are
more familliar with Windows and are working in Ubuntu, keep in mind that copying and pasting must be done with CTRL+Insert and SHIFT+Insert
respectively. 


Commands
========
| Contents |
| :------ |
| [Saving and Exiting a File](#saving-and-exiting-a-file) |
| [Entering and Exiting Insert mode](#entering-and-exiting-insert-mode) |
| [Deleting Text](#deleting-text) |
| [Copy-Pasting](#copy-pasting) |
| [Cursor Manipulation](#cursor-manipulation) |
| [Scrolling](#scrolling) |
| [More Commands](#more-commands) |


Saving and Exiting a File
-------------------------
| Command | Description |
| :------ | :---------- |
| `:w ` | Write to file |
| `:q ` | Quit(exit) file |
| `:wq ` | Save and quit the file |
| `:q! ` | Quit without saving changes |
| `:x ` | Save and quit the file|

<small>[Back to Contents](#commands)</small>

Entering and Exiting Insert mode
--------------------------------
| Command | Description |
| :------ | :---------- |
| `i ` | Insert text before current character |
| `I ` | Insert text at the beginning of the line |
| `a ` | Append text after the current character|
| `A ` | Append text at the end of the line |
| `o ` | Open a new line below the current line |
| `O ` | Open a new line above the current line |
| `[Esc] ` | Exit insert mode |

<small>[Back to Contents](#commands)</small>

Deleting Text
-------------
| Command | Description |
| :------ | :---------- |
| `x ` | Delete a character |
| `dw ` | Delete alphabetic word (and following space) |
| `dd ` | Delete the current line (also yanks the deleted line) |
| `d$ ` | Delete all characters to the end of the current line |
| `D ` | Delete all characters to the end of the line |
| `:<x>,<y>d ` | Delete all lines x through y |
| `d<n>d ` | Delete n lines |

<small>[Back to Contents](#commands)</small>

Copy-Pasting
------------
| Command | Description |
| :------ | :---------- |
| `yy ` | Yank(copy) current line|
| `p ` | Put(paste) |
| `P ` | Put before cursor |
| `:<a>,<z>y ` | Yank lines a-z |
| `y<n>y ` | Yank n lines |

<small>[Back to Contents](#commands)</small>

Cursor Manipulation
-------------------
| Command | Description |
| :------ | :---------- |
| `$ ` | Go to end of line |
| `^ ` | Go to start of line |
| `G ` | Go to end of file |
| `<n>G ` | Go to line n |
| `:<n> ` | Go to line n |

<small>[Back to Contents](#commands)</small>

Scrolling
---------
| Command | Description |
| :------ | :---------- |
| `[CTRL]d ` | Scroll down 1/2 screen |
| `[CTRL]f ` | Scroll forward(down) 1 full screen |
| `[CTRL]u ` | Scroll up 1/2 screen |
| `[CTRL]b ` | Scroll back(up) 1 full screen |

<small>[Back to Contents](#commands)</small>

More Commands
-------------
| Command | Description |
| :------ | :---------- |
| `/<text> ` | Search file for text |
| `n ` | Repeats the search/goes to next occurance |
| `:set number ` | Show line numbers |
| `. ` | Repeat last command |
| `<n>. ` | Repeat last command n times |
| `u ` | Undo last single change |
| `U ` | Restore the current line |
| `:redo `| Redo last "undone" change |
| `~ ` | Change case of letter|

<small>[Back to Contents](#commands)</small>
