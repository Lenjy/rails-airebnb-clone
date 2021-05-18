class DashboardController < ApplicationController
  skip_before_action :authenticate_user! # Temporaire: Pour tester les vues

  def index
  end
end
