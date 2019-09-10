class AddEventToParticipants < ActiveRecord::Migration[5.2]
  def change
    add_reference :participants, :event, foreign_key: true
  end
end
