class AddUserIdEventIdToInvite < ActiveRecord::Migration
  def change
    add_column :invites, :user_id, :integer
    add_column :invites, :event_id, :integer
  end
end
