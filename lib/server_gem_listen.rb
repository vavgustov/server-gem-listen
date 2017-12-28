require "active_support/all"
require "awesome_print"
require "bundler"
require "listen"
require "server_gem_listen/listener"
require "server_gem_listen/puma"
require "server_gem_listen/version"

module ServerGemListen
  def self.launch
    puts 'Start Puma with Curiosity watcher'
    Bundler.configure
    Puma.start
    Listener.start
  end
end
