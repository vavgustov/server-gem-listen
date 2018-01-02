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
        gems = Bundler.definition.specs.to_hash.keys
        Listen.to(ENV['GEM_HOME']) do |*args|
          process_event(gems, *args)
        end
      end

      def process_event(gems, *args)
        return unless need_restart?(gems, *args)
        notify(*args)
        Server.restart
      end

      def need_restart?(gems, *args)
        args.each do |arg|
          arg.each do |path|
            matches = gems.select { |gem| path.include? gem }
            return true unless matches.empty?
          end
        end
        false
      end
    end
  end
end
