class TransDocInTypesController < ApplicationController
  # GET /trans_doc_in_types
  # GET /trans_doc_in_types.json
  def index
    @trans_doc_in_types = TransDocInType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trans_doc_in_types }
    end
  end

  # GET /trans_doc_in_types/1
  # GET /trans_doc_in_types/1.json
  def show
    @trans_doc_in_type = TransDocInType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trans_doc_in_type }
    end
  end

  # GET /trans_doc_in_types/new
  # GET /trans_doc_in_types/new.json
  def new
    @trans_doc_in_type = TransDocInType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trans_doc_in_type }
    end
  end

  # GET /trans_doc_in_types/1/edit
  def edit
    @trans_doc_in_type = TransDocInType.find(params[:id])
  end

  # POST /trans_doc_in_types
  # POST /trans_doc_in_types.json
  def create
    @trans_doc_in_type = TransDocInType.new(params[:trans_doc_in_type])

    respond_to do |format|
      if @trans_doc_in_type.save
        format.html { redirect_to @trans_doc_in_type, notice: 'Trans doc in type was successfully created.' }
        format.json { render json: @trans_doc_in_type, status: :created, location: @trans_doc_in_type }
      else
        format.html { render action: "new" }
        format.json { render json: @trans_doc_in_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trans_doc_in_types/1
  # PUT /trans_doc_in_types/1.json
  def update
    @trans_doc_in_type = TransDocInType.find(params[:id])

    respond_to do |format|
      if @trans_doc_in_type.update_attributes(params[:trans_doc_in_type])
        format.html { redirect_to @trans_doc_in_type, notice: 'Trans doc in type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trans_doc_in_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trans_doc_in_types/1
  # DELETE /trans_doc_in_types/1.json
  def destroy
    @trans_doc_in_type = TransDocInType.find(params[:id])
    @trans_doc_in_type.destroy

    respond_to do |format|
      format.html { redirect_to trans_doc_in_types_url }
      format.json { head :no_content }
    end
  end
end
