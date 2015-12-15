class UsersController < ApplicationController
  before_action :authenticate_user!, :except => [:show]
  #impressionist :actions => [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.friendly.find(params[:id])
    @message = Message.new

    impressionist(@user)
  end

  def edit
    @user = current_user    
  end

  def update
    @user = User.friendly.find(params[:id])

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
      @user = User.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :first_name, :last_name, :profession, :company, :video_link, :is_boss, :is_validated, :avatar, :slug,
                                   :facebook, :twitter, :linkedin, :instagram, :telephone, :website, :blog, :impressions_count, :messages_count)
    end

end
