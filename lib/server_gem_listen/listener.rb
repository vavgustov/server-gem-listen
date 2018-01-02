module ServerGemListen
  module Listener
    class << self
      def start
        listen_events.start
        sleep
      rescue Interrupt => e
        puts "\n#{ServerGemListen::NOTIFICATION_PREFIX} interrupted"
      end

      private

      def notify(modified, added, removed)
        files = { modified: modified, added: added, removed: removed }
        files.each_pair do |key, value|
          next if value.empty?
          value.map! { |v| v.gsub(ENV['GEM_HOME'], '') }
          puts "#{ServerGemListen::NOTIFICATION_PREFIX} #{'file'.pluralize(value.size)} #{key}"
          ap value
        end
      end

      def listen_events
        Listen.to(ENV['GEM_HOME']) do |*args|
          notify(*args)
          Puma.restart
        end
      end
    end
  end
end
