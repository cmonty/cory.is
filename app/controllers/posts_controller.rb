class PostsController < ApplicationController
  require 'rdiscount'
  
  def index
    @post = Post.find(:last)
    @post.body = Markdown.new(@post.body).to_html
  end
  
  def new
    @post = Post.new
    @post.tags.build
  end
  
  def create
    @post = Post.new(params[:post])
    
    if @post.save
      redirect_to @post
    else
      render :action => "new"
    end
    
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
    @post.tags.build if @post.tags.empty?
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(params[:post])
      redirect_to @post
    else
      render :action => "edit"
    end
    
  end
  
end
