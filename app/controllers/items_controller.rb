class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @Title = "unsensational! links"
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @Title = "unsensational! link"
  end

  # GET /items/new
  def new
    @Title = "NEW unsensational! Article"
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    @Title = "EDIT unsensational! link"
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.status = 1
    @item.topic_id = 1
    
    respond_to do |format|
      if @item.save
        
        @item.criteria.new
        @item.criteria.last.name = "Truthfulness"
        @item.criteria.last.status = 1
        @item.criteria.last.cardinality = 1
        @item.criteria.last.created_at = Date.today
        @item.criteria.last.updated_at = Date.today
        
        @item.criteria.new
        @item.criteria.last.name = "Unbiased"
        @item.criteria.last.status = 1
        @item.criteria.last.cardinality = 2
        @item.criteria.last.created_at = Date.today
        @item.criteria.last.updated_at = Date.today
        
        @item.criteria.new
        @item.criteria.last.name = "Unsensational"
        @item.criteria.last.status = 1
        @item.criteria.last.cardinality = 3
        @item.criteria.last.created_at = Date.today
        @item.criteria.last.updated_at = Date.today
        
        @item.criteria.new
        @item.criteria.last.name = "Inspiring"
        @item.criteria.last.status = 1
        @item.criteria.last.cardinality = 4
        @item.criteria.last.created_at = Date.today
        @item.criteria.last.updated_at = Date.today
        
        @item.save
        
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:topic_id, :user_id, :name, :content, :media_link, :author, :status)
    end
end
