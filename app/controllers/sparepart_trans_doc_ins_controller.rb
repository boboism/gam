class SparepartTransDocInsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /sparepart_trans_doc_ins
  # GET /sparepart_trans_doc_ins.json
  def index
    criteria = SparepartTransDocIn.accessible_by(current_ability).search(params[:search])
    @sparepart_trans_doc_ins = criteria.page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sparepart_trans_doc_ins }
      format.xls  { send_data criteria.all.to_xls }
    end
  end

  # GET /sparepart_trans_doc_ins/1
  # GET /sparepart_trans_doc_ins/1.json
  def show
    @sparepart_trans_doc_in = SparepartTransDocIn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sparepart_trans_doc_in }
    end
  end

  # GET /sparepart_trans_doc_ins/new
  # GET /sparepart_trans_doc_ins/new.json
  def new
    doc_no = (SparepartTransDocIn.maximum(:doc_no).to_i || 0) + 1
    @sparepart_trans_doc_in = SparepartTransDocIn.new(doc_no:             doc_no,
                                                      user_department_id: current_user.try(:department).try(:id),
                                                      trans_type_id:      TransDocInType.first.try(:id)
                                                     )
    5.times { @sparepart_trans_doc_in.items << SparepartTransDocItemIn.new }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sparepart_trans_doc_in }
    end
  end

  # GET /sparepart_trans_doc_ins/1/edit
  def edit
    @sparepart_trans_doc_in = SparepartTransDocIn.find(params[:id])
  end

  # POST /sparepart_trans_doc_ins
  # POST /sparepart_trans_doc_ins.json
  def create
    @sparepart_trans_doc_in = SparepartTransDocIn.new(params[:sparepart_trans_doc_in])
    binding.pry

    respond_to do |format|
      if @sparepart_trans_doc_in.save
        format.html { redirect_to @sparepart_trans_doc_in, notice: 'Sparepart trans doc in was successfully created.' }
        format.json { render json: @sparepart_trans_doc_in, status: :created, location: @sparepart_trans_doc_in }
      else
        format.html { render action: "new" }
        format.json { render json: @sparepart_trans_doc_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sparepart_trans_doc_ins/1
  # PUT /sparepart_trans_doc_ins/1.json
  def update
    @sparepart_trans_doc_in = SparepartTransDocIn.find(params[:id])

    respond_to do |format|
      if @sparepart_trans_doc_in.update_attributes(params[:sparepart_trans_doc_in])
        format.html { redirect_to @sparepart_trans_doc_in, notice: 'Sparepart trans doc in was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sparepart_trans_doc_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sparepart_trans_doc_ins/1
  # DELETE /sparepart_trans_doc_ins/1.json
  def destroy
    @sparepart_trans_doc_in = SparepartTransDocIn.find(params[:id])
    @sparepart_trans_doc_in.destroy

    respond_to do |format|
      format.html { redirect_to sparepart_trans_doc_ins_url }
      format.json { head :no_content }
    end
  end
end
