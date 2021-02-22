# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    hello = 'world'
    hello.reverse
  end
end
