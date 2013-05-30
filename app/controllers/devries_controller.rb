class DevriesController < ApplicationController
  # GET /devries
  # GET /devries.json
  def index
    @devries = Devry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @devries }
    end
  end

  # GET /devries/1
  # GET /devries/1.json
  def show
    @devry = Devry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @devry }
    end
  end

  # GET /devries/new
  # GET /devries/new.json
  def new
    @devry = Devry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @devry }
    end
  end

  # GET /devries/1/edit
  def edit
    @devry = Devry.find(params[:id])
  end

  # POST /devries
  # POST /devries.json
  def create
    @devry = Devry.new(params[:devry])

    respond_to do |format|
      if @devry.save
        format.html { redirect_to @devry, notice: 'Devry was successfully created.' }
        format.json { render json: @devry, status: :created, location: @devry }
      else
        format.html { render action: "new" }
        format.json { render json: @devry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /devries/1
  # PUT /devries/1.json
  def update
    @devry = Devry.find(params[:id])

    respond_to do |format|
      if @devry.update_attributes(params[:devry])
        format.html { redirect_to @devry, notice: 'Devry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @devry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devries/1
  # DELETE /devries/1.json
  def destroy
    @devry = Devry.find(params[:id])
    @devry.destroy

    respond_to do |format|
      format.html { redirect_to devries_url }
      format.json { head :no_content }
    end
  end
end
