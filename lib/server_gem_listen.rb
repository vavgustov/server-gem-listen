require "active_support/core_ext/string/inflections"
require "awesome_print"
require "bundler"
require "listen"
require_relative "server_gem_listen/listener"
require_relative "server_gem_listen/server"
require_relative "server_gem_listen/version"

module ServerGemListen
  NOTIFICATION_PREFIX = '=> Server Gem Listen:'.freeze

  def self.launch
    puts "#{NOTIFICATION_PREFIX} launch server".green
    Bundler.configure
    Server.start
    Listener.start
  end
end
