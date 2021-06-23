class PagesController < ApplicationController
  def home
  end

  def about
    render template: "pages/#{params[:page]}"
  end

  def contact
    render template: "pages/#{params[:page]}"
  end
end
