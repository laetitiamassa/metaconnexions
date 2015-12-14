class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # unless @user == current_user
    #   redirect_to :back, :alert => "Access denied."
    # end
  end

  def edit
    @user = current_user    
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update(user_params)
          format.html { redirect_to @user, notice: "Votre profil a bien ete mis a jour" }
          format.js 
    
      else
        fomat.html { render action: "edit", notice: "Oups, veuillez reessayer" }
        format.js
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :profession, :company, :video_link, :is_boss, :is_validated)
    end

end
