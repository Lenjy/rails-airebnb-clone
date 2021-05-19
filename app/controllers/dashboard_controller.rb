class DashboardController < ApplicationController
#   skip_before_action :authenticate_user! # Temporaire: Pour tester les vues
  skip_after_action :verify_policy_scoped 
  def index
    @shoe = Shoe.new
    @locations = []
    current_user.shoes. each do |shoe|
      shoe.locations.each {|loc| @locations << loc}
    end
  end
end
