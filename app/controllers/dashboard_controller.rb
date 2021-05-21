class DashboardController < ApplicationController
#   skip_before_action :authenticate_user! # Temporaire: Pour tester les vues
  skip_after_action :verify_policy_scoped
  def index
    @shoe = Shoe.new
    @location_requests_received = []
    current_user.shoes.each do |shoe|
      shoe.locations.each {|loc| @location_requests_received << loc}
    end
    @location_requests_sent = current_user.locations
  end
end
