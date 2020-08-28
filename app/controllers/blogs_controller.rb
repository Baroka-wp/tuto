class BlogsController < ApplicationController
  def index
    @blog=Blog.all
  end
  def new
    @blog=Blog.new
  end
  def create
    @blog=Blog.new(blog_params)
    @blog.save
    redirect_to blogs_path
  end
  def show
    @blog=Blog.find(params[:id])
  end
 def edit
   @blog=Blog.find(params[:id])
 end
 def update
  @blog=Blog.find(params[:id])
  @blog.update(blog_params)
  redirect_to blogs_path
end
def destroy
  @blog=Blog.find(params[:id])
  @blog.destroy
  flash[:success] = 'Post successfully destroy'
  redirect_to blogs_path
end
private
  def blog_params
    params.require(:blog).permit(:content,:image, :image_cache)
  end
end
