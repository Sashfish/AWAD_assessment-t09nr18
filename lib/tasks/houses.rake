require 'csv'
require 'faker'
namespace :houses do
  desc "pull houses into DB"
  task import: :environment do
 	Property.destroy_all
  Feature.destroy_all
  p 'Beginning import'
	CSV.foreach(Rails.root.join('.', 'lib', 'assets', 'Melbourne_housing_FULL.csv'), :headers =>true) do |row|
        p 'Importing property ' + row[1].to_s
        #create new model instances with the data
        property = Property.create!(
          suburb: row[0],
          address: row[1],
          ptype: row[3],
          price: row[4].to_i,
          yearbuilt: row[15].to_i,
          councilarea: row[16],
          lattitude: row[17].to_f,
          longitude: row[18].to_f,
          regionname: row[19])

        property.save!
          p = Property.where("address = ?", row[1]).pluck(:id).to_s[1..-2]
        p 'Importing features for ' + row[1].to_s
        #create new model instances with the data
        feature = Feature.create!(
          rooms: row[2].to_i,
          bedrooms: row[10].to_i,
          bathrooms: row[11].to_i,
          carspaces: row[12].to_i,
          landsize: row[13].to_i,
          buildingarea: row[14].to_i,
          distance: row[8].to_f,
          property_id: p)
        feature.save!
        if Property.count > 300 #CHANGE TO 3000 FOR PRODUCTION
          p 'Houses imported'
          break
        end
  end
end

desc "fake prices/yearsbuilt for properties with price or yearbuilt = 0" #broken, don't use
task zerofill: :environment do

Property.where(price: 0).each do |property|
  property.update!(price: Faker::Number.between(from: 100000, to: 1000000))
  p 'Found price of zero - randomised'
end

Property.where(yearbuilt: 0).each do |property2|
  property2.update!(yearbuilt: Faker::Number.between(from: 1900, to: 2010))
  p 'Found yearbuilt of zero - randomised'

end
end
end
