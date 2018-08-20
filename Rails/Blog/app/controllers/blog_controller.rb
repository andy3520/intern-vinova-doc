class BlogController < ApplicationController
  def index
    @users = User.all
  end
end
