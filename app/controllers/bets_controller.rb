class BetsController < ApplicationController
  def index
    @bets = Bet.where(user: current_user)
  end

  def new
  end

  def create
    @bet = Bet.new
    @bet.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
