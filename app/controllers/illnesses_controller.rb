class IllnessesController < ApplicationController
  before_action :set_illness, only: [:show, :edit, :update, :destroy]

  # GET /illnesses
  # GET /illnesses.json
  def index
    @illnesses = Illness.all
  end

  # GET /illnesses/1
  # GET /illnesses/1.json
  def show
  end

  # GET /illnesses/new
  def new
    @illness = Illness.new
  end

  # GET /illnesses/1/edit
  def edit
  end

  # POST /illnesses
  # POST /illnesses.json
  def create
    @illness = Illness.new(illness_params)

    respond_to do |format|
      if @illness.save
        format.html { redirect_to @illness, notice: 'Illness was successfully created.' }
        format.json { render :show, status: :created, location: @illness }
      else
        format.html { render :new }
        format.json { render json: @illness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /illnesses/1
  # PATCH/PUT /illnesses/1.json
  def update
    respond_to do |format|
      if @illness.update(illness_params)
        format.html { redirect_to @illness, notice: 'Illness was successfully updated.' }
        format.json { render :show, status: :ok, location: @illness }
      else
        format.html { render :edit }
        format.json { render json: @illness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illnesses/1
  # DELETE /illnesses/1.json
  def destroy
    @illness.destroy
    respond_to do |format|
      format.html { redirect_to illnesses_url, notice: 'Illness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illness
      @illness = Illness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def illness_params
      params.require(:illness).permit(:symptom, :hospital, :data, :appointment_id)
    end
end
