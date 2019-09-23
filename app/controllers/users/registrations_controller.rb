# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create, :new]
  before_action :configure_account_update_params, only: [:update]
  # before_action :set_user, only: [:edit,:update, :create, :destroy]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  #   @user = User.new(sign_up_params)
    
  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to @user, notice: 'Cadastro feito com sucesso!' }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # GET /resource/edit
  def edit
      super
      
    # puts (post_params)
    # puts ("nome")
      
    # @user = User.new(post_params)
    # @user.name = current_user.name
    # @user.nickname = current_user.nickname
      
  end

  # PUT /resource
  # def update
  #   super
    
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  
  protected
    # def after_sign_up_path_for(resource)
    #   signed_in_root_path(resource)
    # end

    # def after_update_path_for(resource)
    #   signed_in_root_path(resource)
    # end
  
  # def users_params
  #   params.require(:registrations).permit(:name, :nickname, :email)
  # end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :nickname, :email, :admin])
  end
  
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :nickname, :email, :password])
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end