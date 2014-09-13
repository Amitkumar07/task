require 'csv'
namespace :import_db do
	
  desc "import package"
  task import_csv_package: :environment do
  
    file=File.join(Rails.root, 'lib/tasks',  'package.csv')

    CSV.foreach(file, :headers => true) do |row|
      Package.create ([
                       :productid => row['PRODUCTID'],
                       :productndc => row['PRODUCTNDC'],
                       :ndcpackagecode => row['NDCPACKAGECODE'],
                       :packagedescription => row['PACKAGEDESCRIPTION']
                     
                      ])
    

  end
end
# desc "import product"
# task import_csv_product: :environment do
#   CSV.foreach(product, :headers => true) do |row|
#   Moulding.create!(row.to_hash)
# end
#   end

end
