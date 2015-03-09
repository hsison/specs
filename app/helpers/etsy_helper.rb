module EtsyHelper

  class Client
    include HTTParty
    base_uri "https://openapi.etsy.com/v2"

    def self.listings(search)
      response = self.get("/listings/active", {query: { api_key: ENV['API_KEY'], keywords: search, includes: "MainImage"} })

      return response.body
    end

  end

end

