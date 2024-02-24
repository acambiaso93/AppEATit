class DashboardsController < ApplicationController
  def show
    @dashboard = Dashboard.current_user
  end
end
