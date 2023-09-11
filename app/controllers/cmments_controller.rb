class CmmentsController < ApplicationController
  before_action :set_cmment, only: %i[ show edit update destroy ]

  # GET /cmments or /cmments.json
  def index
    @cmments = Cmment.all
  end

  # GET /cmments/1 or /cmments/1.json
  def show
  end

  # GET /cmments/new
  def new
    @cmment = Cmment.new
  end

  # GET /cmments/1/edit
  def edit
  end

  # POST /cmments or /cmments.json
  def create
    @cmment = Cmment.new(cmment_params)

    respond_to do |format|
      if @cmment.save
        format.html { redirect_to cmment_url(@cmment), notice: "Cmment was successfully created." }
        format.json { render :show, status: :created, location: @cmment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cmment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cmments/1 or /cmments/1.json
  def update
    respond_to do |format|
      if @cmment.update(cmment_params)
        format.html { redirect_to cmment_url(@cmment), notice: "Cmment was successfully updated." }
        format.json { render :show, status: :ok, location: @cmment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cmment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cmments/1 or /cmments/1.json
  def destroy
    @cmment.destroy

    respond_to do |format|
      format.html { redirect_to cmments_url, notice: "Cmment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cmment
      @cmment = Cmment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cmment_params
      params.require(:cmment).permit(:name3, :stream3)
    end
end
