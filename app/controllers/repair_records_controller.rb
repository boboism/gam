class RepairRecordsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /repair_records
  # GET /repair_records.json
  def index
    criteria = Device.accessible_by(current_ability).search(params[:search])
    @repair_records = criteria.page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @repair_records }
      format.xls  { send_data criteria.all.to_xls }
    end
  end

  # GET /repair_records/1
  # GET /repair_records/1.json
  def show
    @repair_record = RepairRecord.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @repair_record }
    end
  end

  # GET /repair_records/new
  # GET /repair_records/new.json
  def new
    doc_no = (RepairRecord.maximum(:doc_no).to_i || 0) + 1
    @repair_record = current_user.reported_repair_records.new(doc_no: doc_no)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @repair_record }
    end
  end

  # GET /repair_records/1/edit
  def edit
    @repair_record = RepairRecord.find(params[:id])
  end

  # POST /repair_records
  # POST /repair_records.json
  def create
    @repair_record = RepairRecord.new(params[:repair_record])

    respond_to do |format|
      if @repair_record.save
        format.html { redirect_to @repair_record, notice: 'Repair record was successfully created.' }
        format.json { render json: @repair_record, status: :created, location: @repair_record }
      else
        format.html { render action: "new" }
        format.json { render json: @repair_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /repair_records/1
  # PUT /repair_records/1.json
  def update
    @repair_record = RepairRecord.find(params[:id])

    respond_to do |format|
      if @repair_record.update_attributes(params[:repair_record])
        format.html { redirect_to @repair_record, notice: 'Repair record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @repair_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_records/1
  # DELETE /repair_records/1.json
  def destroy
    @repair_record = RepairRecord.find(params[:id])
    @repair_record.destroy

    respond_to do |format|
      format.html { redirect_to repair_records_url }
      format.json { head :no_content }
    end
  end
end
