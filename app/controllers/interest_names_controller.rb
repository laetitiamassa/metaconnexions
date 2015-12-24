class InterestNamesController < ApplicationController
  before_action :set_interest_name, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /interest_names
  # GET /interest_names.json
  def index
    @interest_names = InterestName.all
    @interest = Interest.new
    @interest_name = InterestName.new
  end

  # GET /interest_names/1
  # GET /interest_names/1.json
  def show
  end

  # GET /interest_names/new
  def new
    @interest_name = InterestName.new
  end

  # GET /interest_names/1/edit
  def edit
  end

  # POST /interest_names
  # POST /interest_names.json
  def create
    @interest_name = InterestName.new(interest_name_params)

    respond_to do |format|
      if @interest_name.save
        format.html { redirect_to :back, notice: 'Interest name was successfully created.' }
        format.json { render :show, status: :created, location: @interest_name }
      else
        format.html { render :new }
        format.json { render json: @interest_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_names/1
  # PATCH/PUT /interest_names/1.json
  def update
    respond_to do |format|
      if @interest_name.update(interest_name_params)
        format.html { redirect_to @interest_name, notice: 'Interest name was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_name }
      else
        format.html { render :edit }
        format.json { render json: @interest_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_names/1
  # DELETE /interest_names/1.json
  def destroy
    @interest_name.destroy
    respond_to do |format|
      format.html { redirect_to interest_names_url, notice: 'Interest name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_name
      @interest_name = InterestName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_name_params
      params.require(:interest_name).permit(:name)
    end
end
