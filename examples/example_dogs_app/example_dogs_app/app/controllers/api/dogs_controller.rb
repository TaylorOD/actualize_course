class Api::DogsController < ApplicationController
  def index
    p current_user

    @dogs = Dog.all
    render "index.json.jb"
  end

  def create
  end

  def show
  end

  def update
  end

  def destory
  end
end
