class ViewStatusesController < ApplicationController
  before_action :set_view_status, only: [:show, :edit, :update, :destroy]

  # GET /view_statuses
  # GET /view_statuses.json
  def index
    @view_statuses = ViewStatus.all
  end

  # GET /view_statuses/1
  # GET /view_statuses/1.json
  def show
  end

  # GET /view_statuses/new
  def new
    @view_status = ViewStatus.new
  end

  # GET /view_statuses/1/edit
  def edit
  end

  # POST /view_statuses
  # POST /view_statuses.json
  def create
    @view_status = ViewStatus.new(view_status_params)

    respond_to do |format|
      if @view_status.save
        format.html { redirect_to @view_status, notice: 'View status was successfully created.' }
        format.json { render :show, status: :created, location: @view_status }
      else
        format.html { render :new }
        format.json { render json: @view_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /view_statuses/1
  # PATCH/PUT /view_statuses/1.json
  def update
    respond_to do |format|
      if @view_status.update(view_status_params)
        format.html { redirect_to @view_status, notice: 'View status was successfully updated.' }
        format.json { render :show, status: :ok, location: @view_status }
      else
        format.html { render :edit }
        format.json { render json: @view_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /view_statuses/1
  # DELETE /view_statuses/1.json
  def destroy
    @view_status.destroy
    respond_to do |format|
      format.html { redirect_to view_statuses_url, notice: 'View status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_view_status
      @view_status = ViewStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def view_status_params
      params.require(:view_status).permit(:user_id, :item_id, :status)
    end
end
