class Of < ApplicationRecord

    def self.load_csv_data
        file = File.open('tmp/UF2019.csv')
        file_data = file.readline.map(&:chomp)
            file_data.each_with_index do |row, index|
                next if index.zero?
                cols = row.split(",")
                Of.create(date: "2019-01-#{cols[0].to_i}", value: cols[1].to_f)
                Of.create(date: "2019-02-#{cols[0].to_i}", value: cols[2].to_f) if index < 29
            end
    end
end
