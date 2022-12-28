class PlayController < ApplicationController

  def start
    gt = Gametime.new(:gstart => DateTime.now, :user_id => @current_user.id)

  end



end