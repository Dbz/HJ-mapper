require 'rgeo/shapefile'

RGeo::Shapefile::Reader.open('data/cb_2013_us_zcta510_500k.shp') do |file|
  puts "File contains #{file.num_records} records."
  file.each do |record|
    # puts "Record number #{record.index}:"
    # puts "  Geometry: #{record.geometry.as_text}"
    # puts "  Attributes: #{record.attributes.inspect}"
    puts record.methods.sort
    puts record.display
  end
  file.rewind
  record = file.next
  puts "First record geometry was: #{record.geometry.as_text}"
end