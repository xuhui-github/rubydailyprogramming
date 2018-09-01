require 'csv'
CSV.open('people.csv','r') do |person|
    puts person.inspect
end
