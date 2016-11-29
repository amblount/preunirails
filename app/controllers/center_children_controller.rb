class CenterChildrenController < ApplicationController
  before_action :set_center_child, only: [:show, :edit, :update, :destroy]

  # GET /center_children
  # GET /center_children.json
  def index
    @center_children = CenterChild.all
  end

  # GET /center_children/1
  # GET /center_children/1.json
  def show
  end

  # GET /center_children/new
  def new
    @center_child = CenterChild.new
  end

  # GET /center_children/1/edit
  def edit
  end

  # POST /center_children
  # POST /center_children.json
  def create
    @center_child = CenterChild.new(center_child_params)

    respond_to do |format|
      if @center_child.save
        format.html { redirect_to @center_child, notice: 'Center child was successfully created.' }
        format.json { render :show, status: :created, location: @center_child }
      else
        format.html { render :new }
        format.json { render json: @center_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /center_children/1
  # PATCH/PUT /center_children/1.json
  def update
    respond_to do |format|
      if @center_child.update(center_child_params)
        format.html { redirect_to @center_child, notice: 'Center child was successfully updated.' }
        format.json { render :show, status: :ok, location: @center_child }
      else
        format.html { render :edit }
        format.json { render json: @center_child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /center_children/1
  # DELETE /center_children/1.json
  def destroy
    @center_child.destroy
    respond_to do |format|
      format.html { redirect_to center_children_url, notice: 'Center child was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center_child
      @center_child = CenterChild.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def center_child_params
      params.require(:center_child).permit(:child_id, :center_id)
    end
end
