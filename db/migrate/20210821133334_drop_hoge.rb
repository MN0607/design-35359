class DropHoge < ActiveRecord::Migration[6.0]
  def change
    drop_table :hoge
  end
end
