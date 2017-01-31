class HomeController < ApplicationController
  def home
  @lists = Listask.all
  end
end
