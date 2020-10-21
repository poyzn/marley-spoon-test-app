# frozen_string_literal: true

module API
  class RecipesController < ApplicationController
    include Recipes

    def index
      render json: Commands::ListRecipes.()
    end

    def show
      render json: Commands::ShowRecipe.(params[:id])
    end
  end
end
