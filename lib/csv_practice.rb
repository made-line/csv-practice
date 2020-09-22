require 'csv'
require 'awesome_print'

selected_info = []

def get_all_olympic_athletes(filename)
  olympic_data = CSV.read(filename, headers: true).map { |row| row.to_h }
  
  all_athletes = []

  olympic_data.each do |row|

    athlete = row.select do |key, value|
      key == "Name" || 
      key == "ID" ||
      key == "Height" ||
      key == "Team" ||
      key == "Year" ||
      key == "City" ||
      key == "Sport" ||
      key == "Event" ||
      key == "Medal"
    end 

  all_athletes << athlete

    # ap filter
  


  end 
  # ap olympic_data
return all_athletes

end 

# get_all_olympic_athletes("../data/athlete_events.csv")

def total_medals_per_team(olympic_data)
  # athletes = get_all_olympic_athletes(olympic_data)

  medal_counts = {}
  olympic_data.each do |person|
    team = person["Team"]
    medal = person["Medal"]

    if medal_counts[team] == nil && medal != "NA"
      medal_counts[team] = 0
    end

    if medal != "NA" 
      medal_counts[team] += 1  
    end 

  end
    
  return medal_counts

end



# def get_all_gold_medalists(olympic_data)

# end