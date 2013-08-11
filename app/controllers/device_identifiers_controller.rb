class DeviceIdentifiersController < ApplicationController
  # GET /device_identifiers
  # GET /device_identifiers.json
  def index
    @device_identifiers = DeviceIdentifier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @device_identifiers }
    end
  end

  # GET /device_identifiers/1
  # GET /device_identifiers/1.json
  def show
    @device_identifier = DeviceIdentifier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @device_identifier }
    end
  end

  # GET /device_identifiers/new
  # GET /device_identifiers/new.json
  def new
    @device_identifier = DeviceIdentifier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @device_identifier }
    end
  end

  # GET /device_identifiers/1/edit
  def edit
    @device_identifier = DeviceIdentifier.find(params[:id])
  end

  # POST /device_identifiers
  # POST /device_identifiers.json
  def create
    @device_identifier = DeviceIdentifier.new(params[:device_identifier])

    respond_to do |format|
      if @device_identifier.save
        format.html { redirect_to @device_identifier, notice: 'Device identifier was successfully created.' }
        format.json { render json: @device_identifier, status: :created, location: @device_identifier }
      else
        format.html { render action: "new" }
        format.json { render json: @device_identifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /device_identifiers/1
  # PUT /device_identifiers/1.json
  def update
    @device_identifier = DeviceIdentifier.find(params[:id])

    respond_to do |format|
      if @device_identifier.update_attributes(params[:device_identifier])
        format.html { redirect_to @device_identifier, notice: 'Device identifier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @device_identifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_identifiers/1
  # DELETE /device_identifiers/1.json
  def destroy
    @device_identifier = DeviceIdentifier.find(params[:id])
    @device_identifier.destroy

    respond_to do |format|
      format.html { redirect_to device_identifiers_url }
      format.json { head :no_content }
    end
  end
end
