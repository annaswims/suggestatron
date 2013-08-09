class PlayStylesController < ApplicationController
  # GET /play_styles
  # GET /play_styles.json
  def index
    @play_styles = PlayStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @play_styles }
    end
  end

  # GET /play_styles/1
  # GET /play_styles/1.json
  def show
    @play_style = PlayStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @play_style }
    end
  end

  # GET /play_styles/new
  # GET /play_styles/new.json
  def new
    @play_style = PlayStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @play_style }
    end
  end

  # GET /play_styles/1/edit
  def edit
    @play_style = PlayStyle.find(params[:id])
  end

  # POST /play_styles
  # POST /play_styles.json
  def create
    @play_style = PlayStyle.new(params[:play_style])

    respond_to do |format|
      if @play_style.save
        format.html { redirect_to @play_style, notice: 'Play style was successfully created.' }
        format.json { render json: @play_style, status: :created, location: @play_style }
      else
        format.html { render action: "new" }
        format.json { render json: @play_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /play_styles/1
  # PUT /play_styles/1.json
  def update
    @play_style = PlayStyle.find(params[:id])

    respond_to do |format|
      if @play_style.update_attributes(params[:play_style])
        format.html { redirect_to @play_style, notice: 'Play style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @play_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_styles/1
  # DELETE /play_styles/1.json
  def destroy
    @play_style = PlayStyle.find(params[:id])
    @play_style.destroy

    respond_to do |format|
      format.html { redirect_to play_styles_url }
      format.json { head :no_content }
    end
  end
end
