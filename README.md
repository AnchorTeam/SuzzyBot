# SuzzyBOT
**Soon Best help of installation**


The plugin-wielding, multipurpose Telegram bot.
based on otouto

[Public Bot](http://telegram.me/suzzybot) | [Official  Team Channel](http://telegram.me/royalteamch) | [Development Group](http://telegram.me/royalteamdev)

Suzzy is an independently-developed Telegram API bot written in Lua. Originally conceived as a CLI script in February of 2015, Suzzy has since been open-sourced and migrated to the API, and is being developed to this day.

## Setup {#Setup}
You _must_ have Lua (5.2+), lua-socket, lua-sec, and lua-cjson installed. To upload files, you must have curl installed.
`sudo apt-get install lua5.2 lua-socket lua-sec`

To use fortune.lua, you must have fortune installed.

**Before doing anything**
open config.lua and set `bot_api_key` to the authentication token you received from the Botfather.


You may want to set: `admin`, your Telegram ID; `time_offset`, a positive or negative number, denoting the difference, in seconds, of your system clock to UTC; and `lang`, a lowercase, two-letter code representing your language.
If you want to add and enable a plugins , add them to the `plugins` folder and `plugins `table in `config.lua` (before help.lua) if you set this after `help.lua` plugin not shows in help message

To start the bot, run `./launch.sh`. To stop the bot, send "/halt" from your admin account, and then Ctrl+C out of the loop. If you terminate the bot manually, you risk data loss. If you do not wish the bot to restart automatically, run it with `lua bot.lua`.

Note that certain plugins, such as translate.lua and greetings.lua, will require privacy mode to be disabled. Additionally, some plugins may require or make use of various API keys:

 - weather.lua: [OpenWeatherMap](http://openweathermap.org) API key
 - cats.lua: [The Cat API](http://thecatapi.com) API key (optional)
 - gImages.lua: [Google](http://console.developers.google.com) API and CSE keys
 - translate.lua: [Yandex](https://tech.yandex.com/keys/get/?service=trnsl) API key

* * *

## Control plugins {#Control_plugins}
Some plugins are designed to be used by the bot's owner. Here are some examples, how they're used, and what they do.

| Plugin | Command | Function |
|:-------|:--------|:---------|
| control.lua | /reload | Reloads all plugins and configuration. |
| control.lua | /halt | Saves the database and shuts down the bot properly. |
| shell.lua | /run | Executes shell commands on the host operating system. |

* * *


## List of plugins {#List_of_plugins}

| Plugin | Command | Function | Aliases |
|:-------|:--------|:---------|:--------|
| help.lua | /help | Returns a list of commands. | /h |
| ping.lua | /ping | The simplest plugin ever! |
| echo.lua | /echo <text> | Repeats a string of text. + Markdown|
| gSearch.lua | /google <query> | Returns Google web results. | /g, /gnsfw |
| gImages.lua | /images <query> | Returns a Google image result. | /i, /insfw |
| gMaps.lua | /location <query> | Returns location data from Google Maps. | /loc |
| wikipedia.lua | /wikipedia <query> | Returns the summary of a Wikipedia article. | /wiki |
| calc.lua | /calc <expression> | Returns solutions to math expressions and conversions between common units. |
| time.lua | /time <query> | Returns the time, date, and a timezone for a location. |
| nick.lua | /nick <nickname> | Set your nickname. /nick - will delete it. |
| whoami.lua | /whoami | Returns user and chat info for you or the replied-to user. | /who |
| cats.lua | /cat | Returns a cat picture. |
| reactions.lua | /reactions | Returns a list of reaction emoticons which can be used through the bot. |

* * *

## Style {#Style}
Bot output from every plugin should follow a consistent style. This style is easily observed interacting with the bot.
Titles should be either **bold** (along with their colons) or a [link](http://otou.to) (with plaintext colons) to the content's source. Names should be _italic_. Numbered lists should use bold numbers followed by a bold period followed by a space. Unnumbered lists should use the • bullet point followed by a space. Descriptions and information should be in plaintext, although "flavor" text should be italic. Technical information should be `monospace`. Links should be named.

## Contributors {#Contributors}
Everybody is free to contribute to Suzzy. If you are interested, you are invited to fork the [repo](http://github.com/royalteam/suzzybot) and start making pull requests.. If you have an idea and you are not sure how to implement it, open an issue or bring it up in the Bot Development group.

The creator and maintainer of Suzzy is [Mrhalix](http://telegram.me/mrhalix) or [Enderwitch](http://telegram.me/Enderwitch).
