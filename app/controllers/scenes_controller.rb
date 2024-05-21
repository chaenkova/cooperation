class ScenesController < ApplicationController
  before_action :authenticate_user!, only: %i[index find_current_scene]

  before_action :find_current_scene, only: %i[index]

  def index

  end

  def find_current_scene
      @scene ||= current_user.current_screen
  end
end
