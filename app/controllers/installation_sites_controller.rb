class InstallationSitesController < ApplicationController
  # GET /installation_sites
  # GET /installation_sites.json
  def index
    @installation_sites = InstallationSite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @installation_sites }
    end
  end

  # GET /installation_sites/1
  # GET /installation_sites/1.json
  def show
    @installation_site = InstallationSite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @installation_site }
    end
  end

  # GET /installation_sites/new
  # GET /installation_sites/new.json
  def new
    @installation_site = InstallationSite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @installation_site }
    end
  end

  # GET /installation_sites/1/edit
  def edit
    @installation_site = InstallationSite.find(params[:id])
  end

  # POST /installation_sites
  # POST /installation_sites.json
  def create
    @installation_site = InstallationSite.new(params[:installation_site])

    respond_to do |format|
      if @installation_site.save
        format.html { redirect_to @installation_site, notice: 'Installation site was successfully created.' }
        format.json { render json: @installation_site, status: :created, location: @installation_site }
      else
        format.html { render action: "new" }
        format.json { render json: @installation_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /installation_sites/1
  # PUT /installation_sites/1.json
  def update
    @installation_site = InstallationSite.find(params[:id])

    respond_to do |format|
      if @installation_site.update_attributes(params[:installation_site])
        format.html { redirect_to @installation_site, notice: 'Installation site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @installation_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installation_sites/1
  # DELETE /installation_sites/1.json
  def destroy
    @installation_site = InstallationSite.find(params[:id])
    @installation_site.destroy

    respond_to do |format|
      format.html { redirect_to installation_sites_url }
      format.json { head :no_content }
    end
  end
end
