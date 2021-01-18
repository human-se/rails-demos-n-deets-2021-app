class BasketBallPlayersController < ApplicationController
  before_action :set_basket_ball_player, only: [:show, :edit, :update, :destroy]

  # GET /basket_ball_players
  # GET /basket_ball_players.json
  def index
    @basket_ball_players = BasketBallPlayer.all
  end

  # GET /basket_ball_players/1
  # GET /basket_ball_players/1.json
  def show
  end

  # GET /basket_ball_players/new
  def new
    @basket_ball_player = BasketBallPlayer.new
  end

  # GET /basket_ball_players/1/edit
  def edit
  end

  # POST /basket_ball_players
  # POST /basket_ball_players.json
  def create
    @basket_ball_player = BasketBallPlayer.new(basket_ball_player_params)

    respond_to do |format|
      if @basket_ball_player.save
        format.html { redirect_to @basket_ball_player, notice: 'Basket ball player was successfully created.' }
        format.json { render :show, status: :created, location: @basket_ball_player }
      else
        format.html { render :new }
        format.json { render json: @basket_ball_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basket_ball_players/1
  # PATCH/PUT /basket_ball_players/1.json
  def update
    respond_to do |format|
      if @basket_ball_player.update(basket_ball_player_params)
        format.html { redirect_to @basket_ball_player, notice: 'Basket ball player was successfully updated.' }
        format.json { render :show, status: :ok, location: @basket_ball_player }
      else
        format.html { render :edit }
        format.json { render json: @basket_ball_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basket_ball_players/1
  # DELETE /basket_ball_players/1.json
  def destroy
    @basket_ball_player.destroy
    respond_to do |format|
      format.html { redirect_to basket_ball_players_url, notice: 'Basket ball player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basket_ball_player
      @basket_ball_player = BasketBallPlayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basket_ball_player_params
      params.require(:basket_ball_player).permit(:first_name, :last_name, :position, :height_inches, :weight_lbs)
    end
end
