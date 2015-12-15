module ZSS
  class ServiceRegister

    def self.get_service
      config = Hashie::Mash.new(
        backend: Settings.broker.backend
      )

      service = ZSS::Service.new(:"hello-world", config)

      helloWorldInstance = HelloWorldService.new

      service.add_route(helloWorldInstance, "HELLO/WORLD", :get)

      service
    end

  end
end
