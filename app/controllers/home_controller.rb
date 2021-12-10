class HomeController < ApplicationController
  def index
  end
  def about
    #local variable
    @about_me = "My Name is Thin Yanant Zaw..."
  end
end
