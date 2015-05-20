class PortfolioController < ApplicationController
  def index
    @user = User.find(1)
  end

  def home
    @user = User.find(1)
  end

  def projects
  end

  def summary
  end

  def contact
  end
end
