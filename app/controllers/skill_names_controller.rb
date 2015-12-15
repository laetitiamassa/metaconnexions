class SkillNamesController < ApplicationController
  before_action :set_skill_name, only: [:show, :edit, :update, :destroy]

  # GET /skill_names
  # GET /skill_names.json
  def index
    @skill_names = SkillName.all
    #@skill_names = SkillName.where([ 'name LIKE ?', '%#{params[:search]}%' ])
    #@skill_names = SkillName.search(params[:search])
    @skill = Skill.new
    @skill_name = SkillName.new
  end

  # GET /skill_names/1
  # GET /skill_names/1.json
  def show
  end

  # GET /skill_names/new
  def new
    @skill_name = SkillName.new
  end

  # GET /skill_names/1/edit
  def edit
  end

  # POST /skill_names
  # POST /skill_names.json
  def create
    @skill_name = SkillName.new(skill_name_params)

    respond_to do |format|
      if @skill_name.save
        format.html { redirect_to :back, notice: 'Skill name was successfully created.' }
        format.json { render :show, status: :created, location: @skill_name }
      else
        format.html { render :new }
        format.json { render json: @skill_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_names/1
  # PATCH/PUT /skill_names/1.json
  def update
    respond_to do |format|
      if @skill_name.update(skill_name_params)
        format.html { redirect_to @skill_name, notice: 'Skill name was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_name }
      else
        format.html { render :edit }
        format.json { render json: @skill_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_names/1
  # DELETE /skill_names/1.json
  def destroy
    @skill_name.destroy
    respond_to do |format|
      format.html { redirect_to skill_names_url, notice: 'Skill name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_name
      @skill_name = SkillName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_name_params
      params.require(:skill_name).permit(:name)
    end
end
