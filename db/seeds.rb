require 'csv'

CSV.foreach("db/source.csv") do |row| 
  rowtext = row.join
  if rowtext.length < 126
    Message.create(fact: rowtext)
  end
end
