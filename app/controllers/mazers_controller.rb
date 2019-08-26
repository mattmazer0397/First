class MazersController < ApplicationController
  before_action :set_mazer, only: [:show, :edit, :update, :destroy]

  # GET /mazers
  # GET /mazers.json
  def index
    @mazers = Mazer.all
  end

  # GET /mazers/1
  # GET /mazers/1.json
  def show
  end

  # GET /mazers/new
  def new
    @mazer = Mazer.new
  end

  # GET /mazers/1/edit
  def edit
  end

  # POST /mazers
  # POST /mazers.json
  def create
    @mazer = Mazer.new(mazer_params)

    respond_to do |format|
      if @mazer.save
        format.html { redirect_to @mazer, notice: 'Mazer was successfully created.' }
        format.json { render :show, status: :created, location: @mazer }
      else
        format.html { render :new }
        format.json { render json: @mazer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mazers/1
  # PATCH/PUT /mazers/1.json
  def update
    respond_to do |format|
      if @mazer.update(mazer_params)
        format.html { redirect_to @mazer, notice: 'Mazer was successfully updated.' }
        format.json { render :show, status: :ok, location: @mazer }
      else
        format.html { render :edit }
        format.json { render json: @mazer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mazers/1
  # DELETE /mazers/1.json
  def destroy
    @mazer.destroy
    respond_to do |format|
      format.html { redirect_to mazers_url, notice: 'Mazer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mazer
      @mazer = Mazer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mazer_params
      params.require(:mazer).permit(:Name, :age)
    end
end
