class ChangeColumnToNull < ActiveRecord::Migration[6.0]
  def up
    # Not Null制約を外す場合 not nullを外したいカラム横にtrueを記載
    change_column_null :messages, :user_id, true
    change_column_null :messages, :company_id, true
  end

  def down
    change_column_null :messages, :user_id, false
    change_column_null :messages, :company_id, false
  end
end
