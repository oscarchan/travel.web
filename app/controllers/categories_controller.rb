class CategoriesController < ApplicationController
  def index
    @category_list = Category.find_suggested_list

    attractions = @category_list.map() { |category| [category.code, Attraction.find_by_category(category.code, limit: 3)] }
    @attractions_by_category = Hash[attractions]
  end
end
