class AddNameToCertificate < ActiveRecord::Migration[5.2]
  def change
    add_column :certificates, :name, :string
  end
end
