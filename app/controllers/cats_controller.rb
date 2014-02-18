class CatsController < ApplicationController
  def index
  end

  def show
    @cats = Cat.all
  end
end