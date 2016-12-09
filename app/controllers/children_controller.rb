class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]

  # GET /children
  # GET /children.json
  def index
    @children = Child.all
  end

  # GET /children/1
  # GET /children/1.json
  def show
    @center = Center.first
  end

  # GET /children/new
  def new
    @child = Child.new
    @relationship_options = Relationship.all.collect {|r| [ r.kind, r.id ] }
    @family = Family.new
  end

  # GET /children/1/edit
  def edit
  end

  # POST /children
  # POST /children.json
  def create
    @child = Child.new(child_params)
    @family = Family.create(
                            guardian_id: params["child"]["family"][:guardian_id],
                            child_id: params["child"]["family"][:child_id],
                            relationship_id: params["child"]["family"][:relationship_id]
                            )
    @guardian = Guardian.find(params["child"]["family"][:guardian_id])

    respond_to do |format|
      if @child.save
        format.html { redirect_to @guardian, notice: 'Child was successfully created.' }
        format.json { render :show, status: :created, location: @guardian }
      else
        format.html { render :new }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /children/1
  # PATCH/PUT /children/1.json
  def update
    respond_to do |format|
      if @child.update(child_params)
        format.html { redirect_to @child, notice: 'Child was successfully updated.' }
        format.json { render :show, status: :ok, location: @child }
      else
        format.html { render :edit }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children/1
  # DELETE /children/1.json
  def destroy
    @child.destroy
    respond_to do |format|
      format.html { redirect_to children_url, notice: 'Child was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child
      @child = Child.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_params
      params.require(:child).permit(:first_name, :last_name, :date_of_birth)
    end

    def family_params
      params.require(:family).permit(:relationship_id, :guardian_id, :child_id)
    end
end
