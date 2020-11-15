class ProfilesController < ApplicationController
  # before_action :set_account, only: [:show, :edit, :update, :delete]  
  before_action :set_profile, only: [:show, :edit, :update, :delete]
    before_action :authenticate_user!, except: [:index, :show]
  
  def show
  end

  def new
    @profile = Profile.new
  end

  def create
   @profile = current_user.account.profile = Profile.new(profile_params)
    respond_to do |format|
      if @profile.save
        format.html { redirect_to root_path, notice: 'Profile was successfully created.' }
      else
        format.html { render :edit }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @profile = current_user.account.profile
    @profile.destroy 

    redirect_to root_path
  end

  private
  # def set_account
  #   @account = Account.find(params[:account_id])
  # end

  def set_profile 
    @profile = Profile.find(params[:id])
    
  end

  def profile_params
    params.require(:profile).permit(:id, :title, :description, :locations, :image_id, :account_id)
  end
end
