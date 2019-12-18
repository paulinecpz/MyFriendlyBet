class User::FriendshipsController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @friendships = Friendship.where(user_id: current_user)
  end

  def show
    @friendship = Friendship.find(params[:id])
  end

  def new
    @new_friendship = Friendship.new
    @nonfriends = Friendship.where(user_id: :friend_id)
  end

  def create
    # is this bulk addition or individual addition?
    if params.include?(:friend_id) # individual e.g. "Add friend" link
      @new_friendship = Friendship.create_reciprocal_for_ids(current_user, params[:friend_id])
    else
      params[:user][:friend_ids].each do |f_id|
        @new_friendship = Friendship.create_reciprocal_for_ids(current_user, f_id)
      end
    end
    redirect_to users_path
  end

  def destroy
    Friendship.destroy_reciprocal_for_ids(current_user_id, params[:friend_id])
    redirect_to(request.referer)
  end
end
