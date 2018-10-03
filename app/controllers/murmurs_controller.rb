class MurmursController < ApplicationController
  before_action :set_murmur, only: [:show, :edit, :update, :destroy]

  # GET /murmurs
  # GET /murmurs.json
  def index
    @murmurs = Murmur.all
  end

  # GET /murmurs/1
  # GET /murmurs/1.json
  def show
  end

  # GET /murmurs/new
  def new
    @murmur = Murmur.new
  end

  # GET /murmurs/1/edit
  def edit
  end

  # POST /murmurs
  # POST /murmurs.json
  def create
    @murmur = Murmur.new(murmur_params)

    respond_to do |format|
      if @murmur.save
        format.html { redirect_to @murmur, notice: 'Murmur was successfully created.' }
        format.json { render :show, status: :created, location: @murmur }
      else
        format.html { render :new }
        format.json { render json: @murmur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /murmurs/1
  # PATCH/PUT /murmurs/1.json
  def update
    respond_to do |format|
      if @murmur.update(murmur_params)
        format.html { redirect_to @murmur, notice: 'Murmur was successfully updated.' }
        format.json { render :show, status: :ok, location: @murmur }
      else
        format.html { render :edit }
        format.json { render json: @murmur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /murmurs/1
  # DELETE /murmurs/1.json
  def destroy
    @murmur.destroy
    respond_to do |format|
      format.html { redirect_to murmurs_url, notice: 'Murmur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_murmur
      @murmur = Murmur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def murmur_params
      params.require(:murmur).permit(:content)
    end
end
