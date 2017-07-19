class PagesController < ApplicationController
  def welcome
    @header = "This is the welcome page"
  end

  def about
    @header = "This is the about page"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
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

  def secrets
    if params[:magic_word] == "yo"
      render :secrets
    elsif
      params[:magic_word] != "yo"
      flash[:notice] = "Sorry, that is not the correct secret word."
      redirect_to "/welcome"
    end
  end
end
