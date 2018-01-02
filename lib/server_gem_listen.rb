require "active_support/all"
require "awesome_print"
require "bundler"
require "listen"
require "server_gem_listen/listener"
require "server_gem_listen/puma"
require "server_gem_listen/version"

module ServerGemListen
  NOTIFICATION_PREFIX = '=> Server Gem Listen:'

  def self.launch
    puts "#{NOTIFICATION_PREFIX} launch default server"
    Bundler.configure
    Puma.start
    Listener.start
  end
end
