# frozen_string_literal: true

require 'open-uri'
require 'JSON'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters.push(('A'..'Z').to_a.sample) }
  end

  def score
    @letter = params[:word].upcase.split('')
    @token = params[:token].split('')
    @message = if (@letter <=> @token) == -1
                 'Parse'
               else
                 "Sorry, but #{@letter} cannot be built out of #{@token}"
               end
  end
end
