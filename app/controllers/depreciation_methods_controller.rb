class DepreciationMethodsController < ApplicationController
  # GET /depreciation_methods
  # GET /depreciation_methods.json
  def index
    @depreciation_methods = DepreciationMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @depreciation_methods }
    end
  end

  # GET /depreciation_methods/1
  # GET /depreciation_methods/1.json
  def show
    @depreciation_method = DepreciationMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @depreciation_method }
    end
  end

  # GET /depreciation_methods/new
  # GET /depreciation_methods/new.json
  def new
    @depreciation_method = DepreciationMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @depreciation_method }
    end
  end

  # GET /depreciation_methods/1/edit
  def edit
    @depreciation_method = DepreciationMethod.find(params[:id])
  end

  # POST /depreciation_methods
  # POST /depreciation_methods.json
  def create
    @depreciation_method = DepreciationMethod.new(params[:depreciation_method])

    respond_to do |format|
      if @depreciation_method.save
        format.html { redirect_to @depreciation_method, notice: 'Depreciation method was successfully created.' }
        format.json { render json: @depreciation_method, status: :created, location: @depreciation_method }
      else
        format.html { render action: "new" }
        format.json { render json: @depreciation_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /depreciation_methods/1
  # PUT /depreciation_methods/1.json
  def update
    @depreciation_method = DepreciationMethod.find(params[:id])

    respond_to do |format|
      if @depreciation_method.update_attributes(params[:depreciation_method])
        format.html { redirect_to @depreciation_method, notice: 'Depreciation method was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @depreciation_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depreciation_methods/1
  # DELETE /depreciation_methods/1.json
  def destroy
    @depreciation_method = DepreciationMethod.find(params[:id])
    @depreciation_method.destroy

    respond_to do |format|
      format.html { redirect_to depreciation_methods_url }
      format.json { head :no_content }
    end
  end
end
