class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    url = 'http://ec2-34-240-3-230.eu-west-1.compute.amazonaws.com:5000/flossy?image=cavity_056.jpg'
    @diagnostic = JSON.parse(open(url).read)
  end
end
