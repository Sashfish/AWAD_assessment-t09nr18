require 'csv'
namespace :houses do
  desc "pull houses into DB"
  task import: :environment do
 	Property.destroy_all
  Feature.destroy_all
  p 'Beginning import'
	CSV.foreach(Rails.root.join('.', 'lib', 'assets', 'Melbourne_housing_FULL.csv'), :headers =>true) do |row|
        count = 1
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
          p = Property.where("address = ?", row[1]).select(:id)
          print p
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

        count +=1
        if count > 3000
          p 'House count over 3000, terminating import (thanks heroku)'
          break
      end
    end
    p 'Houses imported'
  end
end
