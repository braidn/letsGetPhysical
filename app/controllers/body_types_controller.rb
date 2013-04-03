#yes scaffold_controller but cleaned up. That's what
#scaffolding is for!
class BodyTypesController < ApplicationController
  # GET /body_types
  # GET /body_types.json
  def index
    @body_types = BodyType.all
  end

  # GET /body_types/1
  # GET /body_types/1.json
  def show
    @body_type = BodyType.find(params[:id])
  end

  # GET /body_types/new
  # GET /body_types/new.json
  def new
    @body_type = BodyType.new
  end

  # GET /body_types/1/edit
  def edit
    @body_type = BodyType.find(params[:id])
  end

  # POST /body_types
  # POST /body_types.json
  def create
    @body_type = BodyType.new(params[:body_type])
    if @body_type.save
      redirect_to body_types_path, notice: 'Body type was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /body_types/1
  # PUT /body_types/1.json
  def update
    @body_type = BodyType.find(params[:id])
    if @body_type.update_attributes(params[:body_type])
      redirect_to @body_type, notice: 'Body type was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /body_types/1
  # DELETE /body_types/1.json
  def destroy
    @body_type = BodyType.find(params[:id])
    @body_type.destroy
    redirect_to body_types_url
  end
end
