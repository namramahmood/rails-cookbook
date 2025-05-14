class BookmarksController < ApplicationController
  before_action :set_category, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.category = @category

    if @bookmark.save
      redirect_to category_path(@category), notice: 'Recipe was successfully added to this category.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    category = @bookmark.category
    @bookmark.destroy
    redirect_to category_path(category), notice: 'Bookmark was successfully deleted.'
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end
end
