class PostsController < ApplicationController
  

  # show ALL posts in db
  def index
    @posts = Post.all
    render :index
  end

  # form to create new post
  def new
    @post = Post.new
    render :new

  end

  # creates new post in db
  # that BELONGS TO current_user
  def create
    post = current_user.posts.create(post_params)
    redirect_to post_path(post)

  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

  # form to edit one post
  def edit
    @post = Post.find(params[:id])
    if current_user.posts.include? @post
      render :edit
    else
      # if user tries to edit post that doesn't belong to them
      # log them out
      session[:user_id] = nil
      redirect_to login_path
    end
  end

  # updates post in db
  def update
    post = Post.find(params[:id])
    if current_user.posts.include? post
      post.update_attributes(post_params)
      redirect_to post_path(post)
    else
      # if user tries to update post that doesn't belong to them
      # log them out
      session[:user_id] = nil
      redirect_to login_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    if current_user.posts.include? post
      post.destroy
      redirect_to profile_path
    else
      # if user tries to destroy post that doesn't belong to them
      # log them out
      session[:user_id] = nil
      redirect_to login_path
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :user_id)
    end

end