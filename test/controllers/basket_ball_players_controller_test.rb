require "test_helper"

class BasketBallPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basket_ball_player = basket_ball_players(:one)
  end

  test "should get index" do
    get basket_ball_players_url
    assert_response :success
  end

  test "should get new" do
    get new_basket_ball_player_url
    assert_response :success
  end

  test "should create basket_ball_player" do
    assert_difference('BasketBallPlayer.count') do
      post basket_ball_players_url, params: { basket_ball_player: { first_name: @basket_ball_player.first_name, height_inches: @basket_ball_player.height_inches, last_name: @basket_ball_player.last_name, position: @basket_ball_player.position, weight_lbs: @basket_ball_player.weight_lbs } }
    end

    assert_redirected_to basket_ball_player_url(BasketBallPlayer.last)
  end

  test "should show basket_ball_player" do
    get basket_ball_player_url(@basket_ball_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_basket_ball_player_url(@basket_ball_player)
    assert_response :success
  end

  test "should update basket_ball_player" do
    patch basket_ball_player_url(@basket_ball_player), params: { basket_ball_player: { first_name: @basket_ball_player.first_name, height_inches: @basket_ball_player.height_inches, last_name: @basket_ball_player.last_name, position: @basket_ball_player.position, weight_lbs: @basket_ball_player.weight_lbs } }
    assert_redirected_to basket_ball_player_url(@basket_ball_player)
  end

  test "should destroy basket_ball_player" do
    assert_difference('BasketBallPlayer.count', -1) do
      delete basket_ball_player_url(@basket_ball_player)
    end

    assert_redirected_to basket_ball_players_url
  end
end
