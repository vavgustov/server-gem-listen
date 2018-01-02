require "active_support/all"
require "awesome_print"
require "bundler"
require "listen"
require "server_gem_listen/listener"
require "server_gem_listen/server"
require "server_gem_listen/version"

module ServerGemListen
  NOTIFICATION_PREFIX = '=> Server Gem Listen:'

  def self.launch
    puts "#{NOTIFICATION_PREFIX} launch server".green
    Bundler.configure
    Server.start
    Listener.start
  end
end
