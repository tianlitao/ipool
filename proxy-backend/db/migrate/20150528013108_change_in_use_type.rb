class ChangeInUseType < ActiveRecord::Migration
  def change
    add_column :proxy_domains, :in_use, :boolean
    change_column_default :proxy_domains, :in_use, false
  end
end
