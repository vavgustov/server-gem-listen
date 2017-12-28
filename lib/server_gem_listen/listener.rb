module ServerGemListen
  module Listener
    class << self
      def start
        listener = Listen.to(ENV['GEM_HOME']) do |*args|
          notify(*args)
          Puma.restart
        end

        listener.start
        sleep
      end

      private

      def notify(modified, added, removed)
        files = { modified: modified, added: added, removed: removed }
        files.each_pair do |key, value|
          next if value.empty?
          value.map! { |v| v.gsub(ENV['GEM_HOME'], '') }
          ap "#{'File'.pluralize(value.size)} #{key}:"
          ap value
        end
      end
    end
  end
end
