class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find params[:id]
  end

  def create
    @blog = Blog.create params[:id]
    redirect_to root_path
  end


  def edit
    @blog = Blog.find params[:id]
  end

  def update
    @blog = Blog.find params[:id]
    @blog.update
    redirect_to root_path
  end


  # def destroy
  #   @blog = Blog.find params[:id]
  #   title = @blog.title
  #   @blog.destroy
  #   if @blog.destroy
  #     flash[:notice] = "\"#{title}\" was deleted succesfully."
  #     redirect_to root_path
  #   else
  #     flash[:error] = "There was an error deleting the topic."
  #     render :show
  #   end
  # end

end
