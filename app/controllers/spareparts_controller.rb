class SparepartsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /spareparts
  # GET /spareparts.json
  def index
    criteria    = Sparepart.accessible_by(current_ability).search(params[:search])
    @spareparts = criteria.page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spareparts }
      format.xls  { send_data criteria.all.to_xls }
    end
  end

  # GET /spareparts/1
  # GET /spareparts/1.json
  def show
    @sparepart = Sparepart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sparepart }
    end
  end

  # GET /spareparts/new
  # GET /spareparts/new.json
  def new
    @sparepart = Sparepart.new(part_type_id: PartType.first.try(:id),
                               manufacturer_id: Manufacturer.first.try(:id),
                               supplier_id: Supplier.first.try(:id)
                              )
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sparepart }
    end
  end

  # GET /spareparts/1/edit
  def edit
    @sparepart = Sparepart.find(params[:id])
  end

  # POST /spareparts
  # POST /spareparts.json
  def create
    @sparepart = Sparepart.new(params[:sparepart])

    respond_to do |format|
      if @sparepart.save
        format.html { redirect_to edit_sparepart_path(@sparepart), notice: 'Sparepart was successfully created.' }
        format.json { render json: @sparepart, status: :created, location: @sparepart }
      else
        format.html { render action: "new" }
        format.json { render json: @sparepart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spareparts/1
  # PUT /spareparts/1.json
  def update
    @sparepart = Sparepart.find(params[:id])

    respond_to do |format|
      if @sparepart.update_attributes(params[:sparepart])
        format.html { redirect_to edit_sparepart_path(@sparepart), notice: 'Sparepart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sparepart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spareparts/1
  # DELETE /spareparts/1.json
  def destroy
    @sparepart = Sparepart.find(params[:id])
    @sparepart.destroy

    respond_to do |format|
      format.html { redirect_to spareparts_url }
      format.json { head :no_content }
    end
  end

  def stock_in
  end
end
