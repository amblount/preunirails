class FormsController < ApplicationController
  def new
  	@form = Form.create

  end

  def show
  	id = params[:id]
  	@form = Form.find(1)
  	@form_fields = FormField.find_by(form_id: 1)
  end

  def edit
  end

  def index
  end
end
