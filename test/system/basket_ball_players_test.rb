require "application_system_test_case"

class BasketBallPlayersTest < ApplicationSystemTestCase
  setup do
    @basket_ball_player = basket_ball_players(:one)
  end

  test "visiting the index" do
    visit basket_ball_players_url
    assert_selector "h1", text: "Basket Ball Players"
  end

  test "creating a Basket ball player" do
    visit basket_ball_players_url
    click_on "New Basket Ball Player"

    fill_in "First name", with: @basket_ball_player.first_name
    fill_in "Height inches", with: @basket_ball_player.height_inches
    fill_in "Last name", with: @basket_ball_player.last_name
    fill_in "Position", with: @basket_ball_player.position
    fill_in "Weight lbs", with: @basket_ball_player.weight_lbs
    click_on "Create Basket ball player"

    assert_text "Basket ball player was successfully created"
    click_on "Back"
  end

  test "updating a Basket ball player" do
    visit basket_ball_players_url
    click_on "Edit", match: :first

    fill_in "First name", with: @basket_ball_player.first_name
    fill_in "Height inches", with: @basket_ball_player.height_inches
    fill_in "Last name", with: @basket_ball_player.last_name
    fill_in "Position", with: @basket_ball_player.position
    fill_in "Weight lbs", with: @basket_ball_player.weight_lbs
    click_on "Update Basket ball player"

    assert_text "Basket ball player was successfully updated"
    click_on "Back"
  end

  test "destroying a Basket ball player" do
    visit basket_ball_players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Basket ball player was successfully destroyed"
  end
end
