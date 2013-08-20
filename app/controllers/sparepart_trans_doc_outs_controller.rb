class SparepartTransDocOutsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /sparepart_trans_doc_outs
  # GET /sparepart_trans_doc_outs.json
  def index
    criteria = SparepartTransDocOut.accessible_by(current_ability).search(params[:search])
    @sparepart_trans_doc_outs = criteria.page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sparepart_trans_doc_outs }
      format.xls  { send_data criteria.all.to_xls }
    end
  end

  # GET /sparepart_trans_doc_outs/1
  # GET /sparepart_trans_doc_outs/1.json
  def show
    @sparepart_trans_doc_out = SparepartTransDocOut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sparepart_trans_doc_out }
    end
  end

  # GET /sparepart_trans_doc_outs/new
  # GET /sparepart_trans_doc_outs/new.json
  def new
    doc_no = (SparepartTransDocIn.maximum(:doc_no).to_i || 0) + 1
    @sparepart_trans_doc_out = SparepartTransDocOut.new(doc_no:             doc_no,
                                                        user_department_id: current_user.try(:department).try(:id),
                                                        trans_type_id:      TransDocInType.first.try(:id)
                                                       )
    5.times { @sparepart_trans_doc_out.items << SparepartTransDocItemOut.new }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sparepart_trans_doc_out }
    end
  end

  # GET /sparepart_trans_doc_outs/1/edit
  def edit
    @sparepart_trans_doc_out = SparepartTransDocOut.find(params[:id])
  end

  # POST /sparepart_trans_doc_outs
  # POST /sparepart_trans_doc_outs.json
  def create
    @sparepart_trans_doc_out = SparepartTransDocOut.new(params[:sparepart_trans_doc_out])

    respond_to do |format|
      if @sparepart_trans_doc_out.save
        format.html { redirect_to @sparepart_trans_doc_out, notice: 'Sparepart trans doc out was successfully created.' }
        format.json { render json: @sparepart_trans_doc_out, status: :created, location: @sparepart_trans_doc_out }
      else
        format.html { render action: "new" }
        format.json { render json: @sparepart_trans_doc_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sparepart_trans_doc_outs/1
  # PUT /sparepart_trans_doc_outs/1.json
  def update
    @sparepart_trans_doc_out = SparepartTransDocOut.find(params[:id])

    respond_to do |format|
      if @sparepart_trans_doc_out.update_attributes(params[:sparepart_trans_doc_out])
        format.html { redirect_to @sparepart_trans_doc_out, notice: 'Sparepart trans doc out was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sparepart_trans_doc_out.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sparepart_trans_doc_outs/1
  # DELETE /sparepart_trans_doc_outs/1.json
  def destroy
    @sparepart_trans_doc_out = SparepartTransDocOut.find(params[:id])
    @sparepart_trans_doc_out.destroy

    respond_to do |format|
      format.html { redirect_to sparepart_trans_doc_outs_url }
      format.json { head :no_content }
    end
  end
end
