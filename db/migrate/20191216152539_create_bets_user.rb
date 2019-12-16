class CreateBetsUser < ActiveRecord::Migration[5.2]
  def change
    create_table :bets_users do |t|
      t.references :user, foreign_key: true
      t.references :bet, foreign_key: true
      t.references :friend
    end
  end
end
