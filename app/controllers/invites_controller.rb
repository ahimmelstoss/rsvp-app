class InvitesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @event = Event.find(params[:event_id])
    @users = User.all
  end

  def create
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])
    @invite = Invite.new(:event_id => @event.id, :user_id => @user.id)
    @invite.save

    redirect_to event_path(@event)
  end

  def edit

  end

end
