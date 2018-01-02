module ServerGemListen
  module Puma
    class << self
      def start
        Thread.new do
          system 'rails s'
        end
      end

      def restart
        puts "#{ServerGemListen::NOTIFICATION_PREFIX} Restart Puma"
        stop
        start
      end

      private

      def stop
        system "kill $(lsof -i tcp:3000 | grep ruby | awk '{ print $2 }')"
      end
    end
  end
end
