class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :delete]
    before_action :authenticate_user!, except: [:index, :show]

  def show
  end

  def new
    @account = Account.new
    @account.build_company
  end

  def create
    @account = current_user.account = Account.new(account_params)
    @account.save!
    redirect_to root_path
  end

  def edit
  end

  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'Account was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def delete
  end

  private
  
  def account_params
    params.require(:account).permit(
      :account_number, :first_name, :last_name, :mobile, :address, :postcode, :suburb, :social_media,
      company_attributes: [:id, :business_name, :abn, :phone, :website, :account_id]
    )
  end

  def set_account
    @account = Account.find(params[:id])
  end
end
