class ThailiteraturesController < ApplicationController
  before_action :set_thailiterature, only: [:show, :edit, :update, :destroy]

  # GET /thailiteratures
  # GET /thailiteratures.json
  def index
    @thailiteratures = Thailiterature.all
  end

  # GET /thailiteratures/1
  # GET /thailiteratures/1.json
  def show
  end

  # GET /thailiteratures/new
  def new
    @thailiterature = Thailiterature.new
  end

  # GET /thailiteratures/1/edit
  def edit
  end

  # POST /thailiteratures
  # POST /thailiteratures.json
  def create
    @thailiterature = Thailiterature.new(thailiterature_params)

    respond_to do |format|
      if @thailiterature.save
        format.html { redirect_to @thailiterature, notice: 'Thailiterature was successfully created.' }
        format.json { render :show, status: :created, location: @thailiterature }
      else
        format.html { render :new }
        format.json { render json: @thailiterature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thailiteratures/1
  # PATCH/PUT /thailiteratures/1.json
  def update
    respond_to do |format|
      if @thailiterature.update(thailiterature_params)
        format.html { redirect_to @thailiterature, notice: 'Thailiterature was successfully updated.' }
        format.json { render :show, status: :ok, location: @thailiterature }
      else
        format.html { render :edit }
        format.json { render json: @thailiterature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thailiteratures/1
  # DELETE /thailiteratures/1.json
  def destroy
    @thailiterature.destroy
    respond_to do |format|
      format.html { redirect_to thailiteratures_url, notice: 'Thai literature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thailiterature
      @thailiterature = Thailiterature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thailiterature_params
      params.require(:thailiterature).permit(:name, :picture, :fileupload)
    end
end
