# frozen_string_literal: true

module DataSources
  # Contentful data source class
  class Contentful < Base
    # Initializes client
    def client
      @client ||= ::Contentful::Client.new space: creds[:space_id],
                                           access_token: creds[:access_token]
    end

    # Fetches single entry
    def entry(id)
      client.entry(id)
    end

    # Fetches list of entries
    def entries(params)
      client.entries(params).to_a
    end

    # Credentials helper
    def creds
      Rails.application.credentials.contentful
    end
  end
end
