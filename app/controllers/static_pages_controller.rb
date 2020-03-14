class StaticPagesController < ApplicationController
  def welcome
    @courses = Course.status("open").future
  end
end
