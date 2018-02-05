# Server Gem Listen 
[![Gem](https://img.shields.io/gem/v/server-gem-listen.svg)](https://rubygems.org/gems/server-gem-listen) [![Maintainability](https://api.codeclimate.com/v1/badges/c2ed6ff9dbf6a06694f3/maintainability)](https://codeclimate.com/github/vavgustov/server-gem-listen/maintainability)

Automatically restart Rails server after changes in gem sources. If you want to watch for changes
in local gems you may want to use lightweight alternative [require_reloader](https://github.com/teohm/require_reloader).  

> **Warning:** this gem not for actual development or production usage. You can use it for quick 
'scientific' experiments with core or other gems. I would recommend setting up an isolated environment 
using something from rbenv/docker/vagrant so you don't have to worry that your experiments will affect 
your real projects.

![image](https://user-images.githubusercontent.com/312873/34501834-c411abb0-f021-11e7-9ce0-34abdc1ae1cb.png)
 
## Installation

```
gem install server-gem-listen
```

## Usage
Execute the command below under your project root:
```
server-gem-listen
```
This will launch `rails s` wrapped with gem watcher.

## Notes
* To speed up reboot you can use [bootsnap](https://github.com/Shopify/bootsnap) 
* This gem is a quick experiment without test coverage

## License
Server Gem Listen is released under the [MIT License](https://opensource.org/licenses/MIT).
