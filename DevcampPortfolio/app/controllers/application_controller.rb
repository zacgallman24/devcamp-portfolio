class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
  def set_title
    @page_title = "DevcampPortfolio | My Portfolio Website"
  end
end