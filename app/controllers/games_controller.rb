class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  def index

    #all this code in a controller, for the sake a a simple demonstration.  Next step: move it to named scopes in the model
    @games = Game.order("name")
    @games = @games.where(["name like ?", "%#{params[:name]}%"]) unless params[:name].blank?
    @games = @games.where([" min_players <= ? and max_players >=?", params[:how_many_players], params[:how_many_players]]) unless params[:how_many_players].blank?
    @games = @games.where(:genre_id=>params[:genre_id]) unless params[:genre_id].blank?
    @games = @games.where(:play_style_id=>params[:play_style_id]) unless params[:play_style_id].blank?
    @games = @games.where(:duration=>(params[:duration].to_i-15)..(params[:duration].to_i+15) )unless params[:duration].blank?

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @game = Game.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game }
    end
  end

  # GET /games/new
  # GET /games/new.json
  def new
    @game = Game.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game }
    end
  end

  # GET /games/1/edit
  def edit
    @game = Game.find(params[:id])
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(params[:game])

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render json: @game, status: :created, location: @game }
      else
        format.html { render action: "new" }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /games/1
  # PUT /games/1.json
  def update
    @game = Game.find(params[:id])

    respond_to do |format|
      if @game.update_attributes(params[:game])
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
    end
  end
end
