## Autogenerated config.py
##
## NOTE: config.py is intended for advanced users who are comfortable
## with manually migrating the config file on qutebrowser upgrades. If
## you prefer, you can also configure qutebrowser using the
## :set/:bind/:config-* commands without having to write a config.py
## file.
##
## Documentation:
##   qute://help/configuring.html
##   qute://help/settings.html

## This is here so configs done via the GUI are still loaded.
## Remove it to not load settings done via the GUI.
config.load_autoconfig(True)

## Aliases for commands. The keys of the given dictionary are the
## aliases, while the values are the commands they map to.
## Type: Dict
# c.aliases = {'w': 'session-save', 'q': 'close', 'qa': 'quit', 'wq': 'quit --save', 'wqa': 'quit --save'}

## Require a confirmation before quitting the application.
## Type: ConfirmQuit
## Valid values:
##   - always: Always show a confirmation.
##   - multiple-tabs: Show a confirmation if multiple tabs are opened.
##   - downloads: Show a confirmation if downloads are running
##   - never: Never show a confirmation.
# c.confirm_quit = ['downloads']

## Automatically start playing `<video>` elements.
## Type: Bool
c.content.autoplay = False

## List of URLs to ABP-style adblocking rulesets.  Only used when Brave's
## ABP-style adblocker is used (see `content.blocking.method`).  You can
## find an overview of available lists here:
## https://adblockplus.org/en/subscriptions - note that the special
## `subscribe.adblockplus.org` links aren't handled by qutebrowser, you
## will instead need to find the link to the raw `.txt` file (e.g. by
## extracting it from the `location` parameter of the subscribe URL and
## URL-decoding it).
## Type: List of Url
c.content.blocking.adblock.lists = [
    'https://easylist.to/easylist/easylist.txt',
    'https://easylist.to/easylist/easyprivacy.txt',
    'https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.plus.txt',
    'https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/popupads.txt',
]

## List of URLs to host blocklists for the host blocker.  Only used when
## the simple host-blocker is used (see `content.blocking.method`).  The
## file can be in one of the following formats:  - An `/etc/hosts`-like
## file - One host per line - A zip-file of any of the above, with either
## only one file, or a file   named `hosts` (with any extension).  It's
## also possible to add a local file or directory via a `file://` URL. In
## case of a directory, all files in the directory are read as adblock
## lists.  The file `~/.config/qutebrowser/blocked-hosts` is always read
## if it exists.
## Type: List of Url
c.content.blocking.hosts.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']

## Which method of blocking ads should be used.  Support for Adblock Plus
## (ABP) syntax blocklists using Brave's Rust library requires the
## `adblock` Python package to be installed, which is an optional
## dependency of qutebrowser. It is required when either `adblock` or
## `both` are selected.
## Type: String
## Valid values:
##   - auto: Use Brave's ABP-style adblocker if available, host blocking otherwise
##   - adblock: Use Brave's ABP-style adblocker
##   - hosts: Use hosts blocking
##   - both: Use both hosts blocking and Brave's ABP-style adblocker
c.content.blocking.method = 'both'

## A list of patterns that should always be loaded, despite being blocked
## by the ad-/host-blocker. Local domains are always exempt from
## adblocking. Note this whitelists otherwise blocked requests, not
## first-party URLs. As an example, if `example.org` loads an ad from
## `ads.example.org`, the whitelist entry could be
## `https://ads.example.org/*`. If you want to disable the adblocker on a
## given page, use the `content.blocking.enabled` setting with a URL
## pattern instead.
## Type: List of UrlPattern
# c.content.blocking.whitelist = []

## Default encoding to use for websites. The encoding must be a string
## describing an encoding such as _utf-8_, _iso-8859-1_, etc.
## Type: String
c.content.default_encoding = 'utf-8'

## Allow websites to request geolocations.
## Type: BoolAsk
## Valid values:
##   - true
##   - false
##   - ask
c.content.geolocation = False

## Show javascript alerts.
## Type: Bool
c.content.javascript.alert = False

## Allow websites to show notifications.
## Type: BoolAsk
## Valid values:
##   - true
##   - false
##   - ask
c.content.notifications.enabled = False

## Display PDF files via PDF.js in the browser without showing a download
## prompt. Note that the files can still be downloaded by clicking the
## download button in the pdf.js viewer. With this set to `false`, the
## `:prompt-open-download --pdfjs` command (bound to `<Ctrl-p>` by
## default) can be used in the download prompt.
## Type: Bool
c.content.pdfjs = True

## Editor (and arguments) to use for the `edit-*` commands. The following
## placeholders are defined:  * `{file}`: Filename of the file to be
## edited. * `{line}`: Line in which the caret is found in the text. *
## `{column}`: Column in which the caret is found in the text. *
## `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
## Same as `{column}`, but starting from index 0.
## Type: ShellCommand
c.editor.command = ['wt', 'hx', '+{line}', '{file}']

## Automatically enter insert mode if an editable element is focused
## after loading the page.
## Type: Bool
c.input.insert_mode.auto_load = True

## Time (in milliseconds) from pressing a key to seeing the keyhint
## dialog.
## Type: Int
c.keyhint.delay = 0

## How to open links in an existing instance if a new one is launched.
## This happens when e.g. opening a link from a terminal. See
## `new_instance_open_target_window` to customize in which window the
## link is opened in.
## Type: String
## Valid values:
##   - tab: Open a new tab in the existing window and activate the window.
##   - tab-bg: Open a new background tab in the existing window and activate the window.
##   - tab-silent: Open a new tab in the existing window without activating the window.
##   - tab-bg-silent: Open a new background tab in the existing window without activating the window.
##   - window: Open in a new window.
##   - private-window: Open in a new private window.
c.new_instance_open_target = 'tab'

## What search to start when something else than a URL is entered.
## Type: String
## Valid values:
##   - naive: Use simple/naive check.
##   - dns: Use DNS requests (might be slow!).
##   - never: Never search automatically.
##   - schemeless: Always search automatically unless URL explicitly contains a scheme.
# c.url.auto_search = 'naive'

## Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
## for a blank page.
## Type: FuzzyUrl
c.url.default_page = 'about:blank'

## Search engines which can be used via the address bar.  Maps a search
## engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
## placeholder. The placeholder will be replaced by the search term, use
## `{{` and `}}` for literal `{`/`}` braces.  The following further
## placeholds are defined to configure how special characters in the
## search terms are replaced by safe characters (called 'quoting'):  *
## `{}` and `{semiquoted}` quote everything except slashes; this is the
## most   sensible choice for almost all search engines (for the search
## term   `slash/and&amp` this placeholder expands to `slash/and%26amp`).
## * `{quoted}` quotes all characters (for `slash/and&amp` this
## placeholder   expands to `slash%2Fand%26amp`). * `{unquoted}` quotes
## nothing (for `slash/and&amp` this placeholder   expands to
## `slash/and&amp`). * `{0}` means the same as `{}`, but can be used
## multiple times.  The search engine named `DEFAULT` is used when
## `url.auto_search` is turned on and something else than a URL was
## entered to be opened. Other search engines can be used by prepending
## the search engine name to the search term, e.g. `:open google
## qutebrowser`.
## Type: Dict
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', 'g': 'https://google.com/?q={}', 'w': 'https://en.wikipedia.org/w/index.php?search={}'}

config.bind('<Escape>', 'mode-leave ;; jseval -q document.activeElement.blur()', mode='insert')
