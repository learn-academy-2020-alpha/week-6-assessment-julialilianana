# ASSESSMENT 6: Rails Commenting Challenge
# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# app/controller/blog_posts_controller.rb

# 1) controller holds the methods for the model BlogPost
class BlogPostsController < ApplicationController
  def index
    # 2)index calls colomns for all blogposts
    @posts = BlogPost.all
  end

  def show
    # 3)show calls coloumns for one blogpost found by its id
    @post = BlogPost.find(params[:id])
  end

  # 4) allows a form for a new blogpost to be made
  def new
  end

  def create
    # 5) allows for a new blog post to be created
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to @post
    else
      render action: :new
    end
  end

  def delete
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # 6) redirect back to BlogPost.find(params[:id]) 
      redirect_to blog_post_path(@post)
    end
  end

  # 7) private methods can only be used within the class
  private
  def blog_post_params
    # 8) says that when a new blogpost is created, it should have a title and content
    params.require(:blog_post).permit(:title, :content)
  end

end


# app/models/blog_post.rb

# 9) define the relationship between models
class BlogPost < ApplicationRecord
  # 10) comments belongs to blogpost and a blog post can have many comments
  has_many :comments
end
