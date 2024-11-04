class BlogController < ApplicationController

  def list_blogs
    post = Post.all

    render json: { message: post }, status: :ok

  end

  def get_blogs_data
    post = Post.find_by_id(params[:id])

    if post.present?
      render json: { message: post}, status: :ok
    else
      render json: { errors: "No post exist with this associated id" }, status: :not_found
    end
  end
end
