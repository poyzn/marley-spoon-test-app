# frozen_string_literal: true

module DataSources
  # Base interface for data source classes
  class Base
    def client
      raise 'Not implemented'
    end

    def entry(id)
      raise 'Not implemented'
    end

    def entries(params)
      raise 'Not implemented'
    end
  end
end
