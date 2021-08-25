class DropHoge < ActiveRecord::Migration[6.0]
  def up
    drop_table :hoge
  end

  def down
  end
end
