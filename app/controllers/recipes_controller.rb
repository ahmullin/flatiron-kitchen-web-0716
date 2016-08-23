class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :show, :update, :destroy]

    def new
      @recipe = Recipe.new
    end

    def create
      # binding.pry
      @recipe = Recipe.create(recipe_params)
      redirect_to recipe_path(@recipe)
    end

    def edit
    end

    def update
      # binding.pry
      @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    end

    def destroy
    end

    def index
    end

    def show
    end

    private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, ingredient_ids:[])
    end

  end
