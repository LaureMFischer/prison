require 'csv'
require 'states'

class ImportRecid
  #Import the recid data
  def self.import
    data = CSV.read("#{Rails.root}/data/ppus07st06.csv")
    #Rails.root gives full path of where the project lives

    data.each do |row|
      if row[1].present? && STATES.include?(row[1].strip)
        row.compact!
        row[0].strip!
        state_abbrev = STATES[row[0]]
        puts "State row is #{row.compact!.inspect}"
        State.create!(name: row[0], pop_at_risk: row[1].gsub(/,/,'').to_i, reincarcerated: row[2].gsub(/,/,'').to_i, percent: row[3].to_f, abbrev: state_abbrev)
      end
    end
  end
end
