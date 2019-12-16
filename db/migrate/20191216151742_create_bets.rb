class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.string :title
      t.string :value
      t.string :comments
      t.date :date
    end
  end
end
