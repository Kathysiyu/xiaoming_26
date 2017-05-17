class BarCodesController < ApplicationController
  before_action :to_root

  def new
    if current_user.bar_code
      redirect_to edit_bar_code_path
    else
      @bar_code = current_user.build_bar_code
    end
  end

  def create
    @bar_code = current_user.build_bar_code bar_code_params
    if @bar_code.save
      redirect_to user_path current_user
   else
      render 'new'
    end
  end

  def edit
    if current_user.bar_code.nil?
      redirect_to new_bar_code_path
    else
      @bar_code = current_user.bar_code
    end
  end

  def update
    if current_user.bar_code.update_attributes bar_code_params
      redirect_to user_path current_user
    else
      render 'edit'
    end
  end

  private
  def bar_code_params
    params.require(:bar_code).permit :pic
  end

  def to_root
    redirect_to root_path unless user_signed_in?
  end
end