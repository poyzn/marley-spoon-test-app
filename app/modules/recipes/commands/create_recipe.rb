# frozen_string_literal: true

module Recipes
  module Commands
    # CreateRecipe class
    #
    # Persists a recipe in local db
    class CreateRecipe
      def initialize(resource)
        @resource = resource
      end

      def call
        Recipe.find_or_create_by(contentful_id: @resource.id) do |obj|
          obj.title = @resource.title
          obj.image = photo
          obj.description = description
          obj.tags = tags
          obj.chef_name = chef
        end
      end

      private

      def photo
        return unless @resource.respond_to? :photo

        @resource.photo.url
      end

      def description
        return unless @resource.respond_to? :description

        @resource.description
      end

      def tags
        return [] unless @resource.respond_to? :tags

        @resource.tags.map { _1.name }
      end

      def chef
        return unless @resource.respond_to? :chef

        @resource.chef.name
      end
    end
  end
end
