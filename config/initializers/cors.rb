#configuration to allow GET and POST requests from all origins
#this middleware needs to be above any other middleware
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        #change wildcard origin when it is known
      origins '*'
      #do i need more request options here?
      resource '*', headers: :any, methods: [:get, :post]
    end
  end