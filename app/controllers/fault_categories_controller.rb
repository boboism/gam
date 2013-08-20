class FaultCategoriesController < ApplicationController
  # GET /fault_categories
  # GET /fault_categories.json
  def index
    @fault_categories = FaultCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fault_categories }
    end
  end

  # GET /fault_categories/1
  # GET /fault_categories/1.json
  def show
    @fault_category = FaultCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fault_category }
    end
  end

  # GET /fault_categories/new
  # GET /fault_categories/new.json
  def new
    @fault_category = FaultCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fault_category }
    end
  end

  # GET /fault_categories/1/edit
  def edit
    @fault_category = FaultCategory.find(params[:id])
  end

  # POST /fault_categories
  # POST /fault_categories.json
  def create
    @fault_category = FaultCategory.new(params[:fault_category])

    respond_to do |format|
      if @fault_category.save
        format.html { redirect_to @fault_category, notice: 'Fault category was successfully created.' }
        format.json { render json: @fault_category, status: :created, location: @fault_category }
      else
        format.html { render action: "new" }
        format.json { render json: @fault_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fault_categories/1
  # PUT /fault_categories/1.json
  def update
    @fault_category = FaultCategory.find(params[:id])

    respond_to do |format|
      if @fault_category.update_attributes(params[:fault_category])
        format.html { redirect_to @fault_category, notice: 'Fault category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fault_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fault_categories/1
  # DELETE /fault_categories/1.json
  def destroy
    @fault_category = FaultCategory.find(params[:id])
    @fault_category.destroy

    respond_to do |format|
      format.html { redirect_to fault_categories_url }
      format.json { head :no_content }
    end
  end
end
