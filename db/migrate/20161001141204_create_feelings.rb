class CreateFeelings < ActiveRecord::Migration[5.0]
  def change
    create_table :feelings do |t|
      t.datetime :day
      t.float :moring_feeling
      t.float :sentiment_analysis

      t.timestamps
    end
  end
end
