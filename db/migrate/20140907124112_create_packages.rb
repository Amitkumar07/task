class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :productid
      t.string :productndc
      t.string :ndcpackagecode
      t.string :packagedescription

      t.timestamps
    end
  end
end
