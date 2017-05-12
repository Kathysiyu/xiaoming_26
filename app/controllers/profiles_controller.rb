class ProfilesController < ApplicationController
  before_action :to_root

  def new
    if current_user.profile
      redirect_to edit_profile_path
    else
      @profile = current_user.build_profile
    end
  end

  def create
    @profile = current_user.build_profile profile_params
    if @profile.save
      redirect_to user_path current_user
   else
      render 'new'
    end
  end

  def edit
    if current_user.profile.nil?
      redirect_to new_profile_path
    else
      @profile = current_user.profile
    end
  end

  def update
    if current_user.profile.update_attributes profile_params
      redirect_to user_path current_user
    else
      render 'edit'
    end
  end

  private
  def profile_params
    params.require(:profile).permit :name,
                                    :nickname,
                                    :gender,
                                    :pic,
                                    :birthday,
                                    :area,
                                    :hometown,
                                    :car,
                                    :how_long,
                                    :hobby,
                                    :good_at,
                                    :slogan
  end

  def to_root
    redirect_to root_path unless user_signed_in?
  end
end