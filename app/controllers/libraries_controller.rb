class LibrariesController < ApplicationController
  before_action :find_library, only: [:show, :edit, :update, :destroy]

  def index
    @library = Library.all.order('created_at ASC')
  end

  def edit
  end

  def new
    @library = Library.new
  end

  def show
  end

  def update
    if @library.update(library_params)
      redirect_to library_path(@library)
    else
      render 'new'
  end
  end

  def create
    @library = Library.new(library_params)
      if @library.save
        redirect_to root_path
      else
        render 'new'
      end
    end

  def destroy
    @library.destroy
    redirect_to root_path
  end

  private

    def library_params
      params.require(:library).permit(:title, :description, :author)
    end

    def find_library
      @library = Library.find(params[:id])
    end
end
