require 'CSV'
namespace :import_db do
	
  desc "import package"
  task import_csv_package: :environment do
  
    file=File.join(Rails.root, 'tmp',  'package.csv')

    CSV.foreach(file, :headers => true) do |row|
      Package.create ([
                       :productid => row['productid'],
                       :productndc => row['productndc'],
                       :ndcpackagecode => row['ndcpackagecode'],
                       :packagedescription => row['packagedescription']
                     
                      ])
    

  end
end
desc "import product"
task import_csv_product: :environment do
  CSV.foreach(product, :headers => true) do |row|
  Moulding.create!(row.to_hash)
end
  end

end
