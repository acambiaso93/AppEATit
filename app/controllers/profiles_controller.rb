class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @profile = current_user.profile
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit
    @profile = current_user.profile
    @user = current_user
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      redirect_to profile_path(@profile), notice: 'Shining bright like a diamond.'
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(
      :name, :description, :diet, :profile_picture, :city
    )
  end
end
