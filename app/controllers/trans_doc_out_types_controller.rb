class TransDocOutTypesController < ApplicationController
  # GET /trans_doc_out_types
  # GET /trans_doc_out_types.json
  def index
    @trans_doc_out_types = TransDocOutType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trans_doc_out_types }
    end
  end

  # GET /trans_doc_out_types/1
  # GET /trans_doc_out_types/1.json
  def show
    @trans_doc_out_type = TransDocOutType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trans_doc_out_type }
    end
  end

  # GET /trans_doc_out_types/new
  # GET /trans_doc_out_types/new.json
  def new
    @trans_doc_out_type = TransDocOutType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trans_doc_out_type }
    end
  end

  # GET /trans_doc_out_types/1/edit
  def edit
    @trans_doc_out_type = TransDocOutType.find(params[:id])
  end

  # POST /trans_doc_out_types
  # POST /trans_doc_out_types.json
  def create
    @trans_doc_out_type = TransDocOutType.new(params[:trans_doc_out_type])

    respond_to do |format|
      if @trans_doc_out_type.save
        format.html { redirect_to @trans_doc_out_type, notice: 'Trans doc out type was successfully created.' }
        format.json { render json: @trans_doc_out_type, status: :created, location: @trans_doc_out_type }
      else
        format.html { render action: "new" }
        format.json { render json: @trans_doc_out_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trans_doc_out_types/1
  # PUT /trans_doc_out_types/1.json
  def update
    @trans_doc_out_type = TransDocOutType.find(params[:id])

    respond_to do |format|
      if @trans_doc_out_type.update_attributes(params[:trans_doc_out_type])
        format.html { redirect_to @trans_doc_out_type, notice: 'Trans doc out type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trans_doc_out_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans_doc_out_types/1
  # DELETE /trans_doc_out_types/1.json
  def destroy
    @trans_doc_out_type = TransDocOutType.find(params[:id])
    @trans_doc_out_type.destroy

    respond_to do |format|
      format.html { redirect_to trans_doc_out_types_url }
      format.json { head :no_content }
    end
  end
end
