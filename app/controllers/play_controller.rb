class PlayController < ApplicationController

  before_action :authenticate_user
  def start
    unless  GameTime.where(user_id: @current_user.id, gend: nil).exists?
      gt = GameTime.create(gstart: DateTime.now, user_id: @current_user.id)
    end


  end
  def endgame
    GameTime.where(user_id: @current_user.id, gend: nil).each do |t|
      t.gend = DateTime.now
      t.save
    end

    redirect_to playerslist_path
  end


end