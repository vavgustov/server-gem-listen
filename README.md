# Server Gem Listen [![Gem](https://img.shields.io/gem/v/server-gem-listen.svg)](https://rubygems.org/gems/server-gem-listen) [![Build Status](https://img.shields.io/travis/vavgustov/server-gem-listen/master.svg)](https://travis-ci.org/vavgustov/server-gem-listen) [![Maintainability](https://api.codeclimate.com/v1/badges/c2ed6ff9dbf6a06694f3/maintainability)](https://codeclimate.com/github/vavgustov/server-gem-listen/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/c2ed6ff9dbf6a06694f3/test_coverage)](https://codeclimate.com/github/vavgustov/server-gem-listen/test_coverage)

Automatically restart Rails server after changes in gem sources. If you want to watch for changes
in local gems you may want to use lightweight alternative [require_reloader](https://github.com/teohm/require_reloader).  

**Warning:** this gem not for actual development or production usage. You can use this gem for quick 'scientific' experiments with core or something like this.

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

## License

Server Gem Listen is released under the [MIT License](https://opensource.org/licenses/MIT).
