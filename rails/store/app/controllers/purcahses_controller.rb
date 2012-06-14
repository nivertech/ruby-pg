class PurcahsesController < ApplicationController
  # GET /purcahses
  # GET /purcahses.json
  def index
    @purcahses = Purcahse.all
    @total_price = Purcahse.sum :price
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purcahses }
    end
  end

  # GET /purcahses/1
  # GET /purcahses/1.json
  def show
    @purcahse = Purcahse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purcahse }
    end
  end

  # GET /purcahses/new
  # GET /purcahses/new.json
  def new
    @purcahse = Purcahse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purcahse }
    end
  end

  # GET /purcahses/1/edit
  def edit
    @purcahse = Purcahse.find(params[:id])
  end

  # POST /purcahses
  # POST /purcahses.json
  def create
    @purcahse = Purcahse.new(params[:purcahse])

    respond_to do |format|
      if @purcahse.save
        format.html { redirect_to @purcahse, notice: 'Purcahse was successfully created.' }
        format.json { render json: @purcahse, status: :created, location: @purcahse }
      else
        format.html { render action: "new" }
        format.json { render json: @purcahse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purcahses/1
  # PUT /purcahses/1.json
  def update
    @purcahse = Purcahse.find(params[:id])

    respond_to do |format|
      if @purcahse.update_attributes(params[:purcahse])
        format.html { redirect_to @purcahse, notice: 'Purcahse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purcahse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purcahses/1
  # DELETE /purcahses/1.json
  def destroy
    @purcahse = Purcahse.find(params[:id])
    @purcahse.destroy

    respond_to do |format|
      format.html { redirect_to purcahses_url }
      format.json { head :no_content }
    end
  end
end
