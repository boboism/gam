class DevicesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /devices
  # GET /devices.json
  def index
    criteria = Device.accessible_by(current_ability).search(params[:search])
    @devices = criteria.page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devices }
      format.xls { send_data criteria.all.to_xls }
    end
  end

  # GET /devices/1
  # GET /devices/1.json
  def show
    @device = Device.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @device }
    end
  end

  # GET /devices/new
  # GET /devices/new.json
  def new
    @device = Device.new(salvage_rate:          5,
                         operator_id:           current_user.id, 
                         responsible_by_id:     current_user.id, 
                         user_department_id:    current_user.department.try(:id),
                         category_id:           Category.first.try(:id),
                         manufacturer_id:       Manufacturer.first.try(:id),
                         supplier_id:           Supplier.first.try(:id),
                         installation_site_id:  InstallationSite.first.try(:id)
                        )

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @device }
    end
  end

  # GET /devices/1/edit
  def edit
    @device = Device.find(params[:id])
  end

  # POST /devices
  # POST /devices.json
  def create
    @device = Device.new(params[:device])

    respond_to do |format|
      if @device.save
        format.html { redirect_to edit_device_path(@device), notice: 'Device was successfully created.' }
        format.json { render json: @device, status: :created, location: @device }
      else
        format.html { render action: "new" }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /devices/1
  # PUT /devices/1.json
  def update
    @device = Device.find(params[:id])

    respond_to do |format|
      if @device.update_attributes(params[:device])
        format.html { redirect_to edit_device_path(@device), notice: 'Device was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @device = Device.find(params[:id])
    @device.destroy

    respond_to do |format|
      format.html { redirect_to devices_url }
      format.json { head :no_content }
    end
  end
end
