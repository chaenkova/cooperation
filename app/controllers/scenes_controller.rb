class ScenesController < ApplicationController
  before_action :authenticate_user!, only: %i[index]

  # before_action :find_current_scene, only: %i[index]

  def index

  end

  def find_current_scene

  end
end
