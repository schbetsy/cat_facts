require 'csv'

CSV.foreach("db/source.csv") do |row| 
  rowtext = row.join
  if rowtext.length < 255
    Message.create(fact: rowtext)
  end
end
