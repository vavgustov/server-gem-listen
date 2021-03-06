module ServerGemListen
  module Server
    class << self
      def start
        Thread.new do
          system './bin/rails s'
        end
      end

      def restart
        puts "#{ServerGemListen::NOTIFICATION_PREFIX} restart server".green
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
