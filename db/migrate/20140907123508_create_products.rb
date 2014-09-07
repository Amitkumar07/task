  class CreateProducts < ActiveRecord::Migration
  def change
    create_table(:products, :id => false) do |t|
      t.string :product_id, :options => 'PRIMARY KEY'
      t.string :productndc
      t.string :producttypename
      t.string :proprietaryname
      t.string :proprietarynamesuffix
      t.string :dosageformname
      t.string :routename
      t.string :startmarketingdate
      t.string :endmarketingdate
      t.string :marketingcategoryname
      t.string :applicationnumber
      t.string :labelername
      t.string :substancename
      t.string :active_numerator_strength
      t.string :active_ingred_unit
      t.string :pharm_classes

      t.timestamps
    end
  end
end
