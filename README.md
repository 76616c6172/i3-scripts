# i3ass - i3 assistance scripts 


![logo](https://github.com/i3ass-dev/i3ass/blob/dev/assets/i3ass-first-logo2021-05-26-300x200.png?raw=true)  

### a shellscript collection to assist the usage of the [i3wm] windowmanager.


## installation

If you are using **Arch linux**, you can install the i3ass
package from [AUR].  

Or follow the instructions below to install from source:  

(*configure the installation destination in the Makefile,
if needed*)

``` text
$ git clone https://github.com/budlabs/i3ass.git
$ cd i3ass
# make install
$ i3ass
i3ass - version: 2021.10.26.0
updated: 2021-10-26 by budRich

script   | version
------------------
i3flip   | 0.101
i3fyra   | 1.22
i3get    | 0.8
i3gw     | 2020.08.12.0
i3king   | 0.32
i3Kornhe | 0.667
i3list   | 0.4
i3menu   | 0.11
i3run    | 0.2
i3var    | 0.050
i3viswiz | 0.55
i3zen    | 0.1

dependencies:
bash     [INSTALLED]
gawk     [INSTALLED]
i3       [INSTALLED]
i3-msg   [INSTALLED]
rofi     [INSTALLED]
xdotool  [INSTALLED]
```


All the scripts that will be installed are located in the
`src` directory of this repo, so you can also just add that
directory or the scripts to your **$PATH**.  

---

There is no oneline way to describe what **i3ass** does.
And some of the scripts are rather complex. The links in the
table below, will take you to the wiki page for the script.


|**file**  |     **function**          |
|:---------|:--------------------------|
|[i3flip] | Tabswitching done right
|[i3fyra] | An advanced, simple grid-based tiling layout
|[i3get] | prints info about a specific window to stdout
|[i3gw] | a ghost window wrapper for i3wm
|[i3king] | window ruler
|[i3Kornhe] | move and resize windows gracefully
|[i3list] | list information about the current i3 session.
|[i3menu] | Adds more features to rofi when used in i3wm
|[i3run] | Run, Raise or hide windows in i3wm
|[i3var] | Set or get a i3 variable
|[i3viswiz] | Professional window focus for i3wm
|[i3zen] | zentered container, full focus

EXAMPLES
--------

Execute a script with the `--help` flag to display help
about the command.

`i3get --help` display [i3get] help  
`i3get --version` display [i3get] version  
`man i3get` show [i3get] man page  
`i3ass` show version info for all scripts and dependencies.

## updates

#### [i3zen]

Re-worked and re-added this script. It puts the currently
focused window in a floating, but tabbed container on a
*fresh* workspace. No ghostwindows, works good with multiple
workspaces. See the
[wiki](https://github.com/budlabs/i3ass/wiki/i3zen) or
manpage for more info.

#### [i3king]


Added `--winid` option.  
The new `window_icon_padding` property is now handled so it
works with the latest version of i3wm (4.20).

#### [i3run]


Fixed issues related to named workspaces always having the
same workspace number (-1) as the scratchpad.

Added `--verbose` option.

#### [i3list]


Multiple search criteria works well now.

Added new keys:  

``` shell
i3list[APA] # Active Window parent ID
i3list[TPA] # Target Window parent ID
```


## known issues

**THERE IS NO SUPPORT FOR i3-gaps**  
some scripts might still work with i3-gaps, but consider that *Happy little accidents™*

[wiki]: https://github.com/budlabs/i3ass/wiki
[Makefile]: https://github.com/budRich/i3ass/blob/master/Makefile
[install.sh]: https://github.com/budRich/i3ass/blob/master/install.sh
[i3add]: https://github.com/budRich/scripts/i3add/
[AUR]: https://aur.archlinux.org/packages/i3ass/
[i3]: https://i3wm.org/
[i3wm]: https://i3wm.org/
[bashbud]: https://github.com/budlabs/bashbud
[i3flip]: https://github.com/budlabs/i3ass/wiki/i3flip
[i3fyra]: https://github.com/budlabs/i3ass/wiki/i3fyra
[i3get]: https://github.com/budlabs/i3ass/wiki/i3get
[i3gw]: https://github.com/budlabs/i3ass/wiki/i3gw
[i3Kornhe]: https://github.com/budlabs/i3ass/wiki/i3Kornhe
[i3list]: https://github.com/budlabs/i3ass/wiki/i3list
[i3var]: https://github.com/budlabs/i3ass/wiki/i3var
[i3run]: https://github.com/budlabs/i3ass/wiki/i3run
[i3menu]: https://github.com/budlabs/i3ass/wiki/i3menu
[i3viswiz]: https://github.com/budlabs/i3ass/wiki/i3viswiz
[i3king]: https://github.com/budlabs/i3ass/wiki/i3king
[i3zen]: https://github.com/budlabs/i3ass/wiki/i3zen



## license

**i3ass** is licensed with the **MIT license**


