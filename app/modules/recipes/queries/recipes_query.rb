# frozen_string_literal: true

module Recipes
  module Queries
    # RecipesQuery class
    #
    # Fetches list of recipes from data source
    class RecipesQuery
      def initialize(source)
        @source = source
      end

      def call
        Rails.logger.info '>>> fetched from source <<<'
        @source.entries content_type: 'recipe', include: 1
      end
    end
  end
end
