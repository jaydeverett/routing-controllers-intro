class PagesController < ApplicationController
  def welcome
    @header = "This is the welcome page"
  end

  def about
    @header = "This is the about page"
  end

  def contest
    @header = "This is the contest page"
  end

  def kitten
    @header = "Here's a kitten you idiot"
    set_kitten_url
  end

  def kittens
    @header = "Here's a bunch of kittens"
    set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
