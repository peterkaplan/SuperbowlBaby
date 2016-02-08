require 'date'

data = [
    {
        "winner_name": "Green Bay Packers",
        "date": "January 15, 1967"
    },
    {
        "winner_name": "Green Bay Packers",
        "date": "January 14, 1968"
    },
    {
        "winner_name": "New York Jets",
        "date": "January 12, 1969"
    },
    {
        "winner_name": "Kansas City Chiefs",
        "date": "January 11, 1970"
    },
    {
        "winner_name": "Baltimore Colts",
        "date": "January 17, 1971"
    },
    {
        "winner_name": "Dallas Cowboys",
        "date": "January 16, 1972"
    },
    {
        "winner_name": "Miami Dolphins",
        "date": "January 14, 1973"
    },
    {
        "winner_name": "Miami Dolphins",
        "date": "January 13, 1974"
    },
    {
        "winner_name": "Pittsburgh Steelers",
        "date": "January 12, 1975"
    },
    {
        "winner_name": "Pittsburgh Steelers",
        "date": "January 18, 1976"
    },
    {
        "winner_name": "Oakland Raiders",
        "date": "January 9, 1977"
    },
    {
        "winner_name": "Dallas Cowboys",
        "date": "January 15, 1978"
    },
    {
        "winner_name": "Pittsburgh Steelers",
        "date": "January 21, 1979"
    },
    {
        "winner_name": "Pittsburgh Steelers",
        "date": "January 20, 1980"
    },
    {
        "winner_name": "Oakland Raiders",
        "date": "January 25, 1981"
    },
    {
        "winner_name": "San Francisco 49ers",
        "date": "January 24, 1982"
    },
    {
        "winner_name": "Washington Redskins",
        "date": "January 30, 1983"
    },
    {
        "winner_name": "Los Angeles Raiders",
        "date": "January 22, 1984"
    },
    {
        "winner_name": "San Francisco 49ers",
        "date": "January 20, 1985"
    },
    {
        "winner_name": "Chicago Bears",
        "date": "January 26, 1986"
    },
    {
        "winner_name": "New York Giants",
        "date": "January 25, 1987"
    },
    {
        "winner_name": "Washington Redskins",
        "date": "January 31, 1988"
    },
    {
        "winner_name": "San Francisco 49ers",
        "date": "January 22, 1989"
    },
    {
        "winner_name": "San Francisco 49ers",
        "date": "January 28, 1990"
    },
    {
        "winner_name": "New York Giants",
        "date": "January 27, 1991"
    },
    {
        "winner_name": "Washington Redskins",
        "date": "January 26, 1992"
    },
    {
        "winner_name": "Dallas Cowboys",
        "date": "January 31, 1993"
    },
    {
        "winner_name": "Dallas Cowboys",
        "date": "January 30, 1994"
    },
    {
        "winner_name": "San Francisco 49ers",
        "date": "January 29, 1995"
    },
    {
        "winner_name": "Dallas Cowboys",
        "date": "January 28, 1996"
    },
    {
        "winner_name": "Green Bay Packers",
        "date": "January 26, 1997"
    },
    {
        "winner_name": "Denver Broncos",
        "date": "January 25, 1998"
    },
    {
        "winner_name": "Denver Broncos",
        "date": "January 31, 1999"
    },
    {
        "winner_name": "St. Louis Rams",
        "date": "January 30, 2000"
    },
    {
        "winner_name": "Baltimore Ravens",
        "date": "January 28, 2001"
    },
    {
        "winner_name": "New England Patriots",
        "date": "February 3, 2002"
    },
    {
        "winner_name": "Tampa Bay Buccaneers",
        "date": "January 26, 2003"
    },
    {
        "winner_name": "New England Patriots",
        "date": "February 1, 2004"
    },
    {
        "winner_name": "New England Patriots",
        "date": "February 6, 2005"
    },
    {
        "winner_name": "Pittsburgh Steelers",
        "date": "February 5, 2006"
    },
    {
        "winner_name": "Indianapolis Colts",
        "date": "February 4, 2007"
    },
    {
        "winner_name": "New York Giants",
        "date": "February 3, 2008"
    },
    {
        "winner_name": "Pittsburgh Steelers",
        "date": "February 1, 2009"
    },
    {
        "winner_name": "New Orleans Saints",
        "date": "February 7, 2010"
    },
    {
        "winner_name": "Green Bay Packers",
        "date": "February 6, 2011"
    },
    {
        "winner_name": "New York Giants",
        "date": "February 5, 2012"
    },
    {
        "winner_name": "Baltimore Ravens",
        "date": "February 3, 2013"
    },
    {
        "winner_name": "Seattle Seahawks",
        "date": "February 2, 2014"
    },
    {
        "winner_name": "New England Patriots",
        "date": "February 1, 2015"
    },
    {
        "winner_name": "Denver Broncos",
        "date": "February 7, 2016"
    }
]

def check_date(data)
    years_data = {"1967"=>{:date=>"January 15, 1967", :team_name=>"Green Bay Packers"}, "1968"=>{:date=>"January 14, 1968", :team_name=>"Green Bay Packers"}, "1969"=>{:date=>"January 12, 1969", :team_name=>"New York Jets"}, "1970"=>{:date=>"January 11, 1970", :team_name=>"Kansas City Chiefs"}, "1971"=>{:date=>"January 17, 1971", :team_name=>"Baltimore Colts"}, "1972"=>{:date=>"January 16, 1972", :team_name=>"Dallas Cowboys"}, "1973"=>{:date=>"January 14, 1973", :team_name=>"Miami Dolphins"}, "1974"=>{:date=>"January 13, 1974", :team_name=>"Miami Dolphins"}, "1975"=>{:date=>"January 12, 1975", :team_name=>"Pittsburgh Steelers"}, "1976"=>{:date=>"January 18, 1976", :team_name=>"Pittsburgh Steelers"}, "1977"=>{:date=>"January 9, 1977", :team_name=>"Oakland Raiders"}, "1978"=>{:date=>"January 15, 1978", :team_name=>"Dallas Cowboys"}, "1979"=>{:date=>"January 21, 1979", :team_name=>"Pittsburgh Steelers"}, "1980"=>{:date=>"January 20, 1980", :team_name=>"Pittsburgh Steelers"}, "1981"=>{:date=>"January 25, 1981", :team_name=>"Oakland Raiders"}, "1982"=>{:date=>"January 24, 1982", :team_name=>"San Francisco 49ers"}, "1983"=>{:date=>"January 30, 1983", :team_name=>"Washington Redskins"}, "1984"=>{:date=>"January 22, 1984", :team_name=>"Los Angeles Raiders"}, "1985"=>{:date=>"January 20, 1985", :team_name=>"San Francisco 49ers"}, "1986"=>{:date=>"January 26, 1986", :team_name=>"Chicago Bears"}, "1987"=>{:date=>"January 25, 1987", :team_name=>"New York Giants"}, "1988"=>{:date=>"January 31, 1988", :team_name=>"Washington Redskins"}, "1989"=>{:date=>"January 22, 1989", :team_name=>"San Francisco 49ers"}, "1990"=>{:date=>"January 28, 1990", :team_name=>"San Francisco 49ers"}, "1991"=>{:date=>"January 27, 1991", :team_name=>"New York Giants"}, "1992"=>{:date=>"January 26, 1992", :team_name=>"Washington Redskins"}, "1993"=>{:date=>"January 31, 1993", :team_name=>"Dallas Cowboys"}, "1994"=>{:date=>"January 30, 1994", :team_name=>"Dallas Cowboys"}, "1995"=>{:date=>"January 29, 1995", :team_name=>"San Francisco 49ers"}, "1996"=>{:date=>"January 28, 1996", :team_name=>"Dallas Cowboys"}, "1997"=>{:date=>"January 26, 1997", :team_name=>"Green Bay Packers"}, "1998"=>{:date=>"January 25, 1998", :team_name=>"Denver Broncos"}, "1999"=>{:date=>"January 31, 1999", :team_name=>"Denver Broncos"}, "2000"=>{:date=>"January 30, 2000", :team_name=>"St. Louis Rams"}, "2001"=>{:date=>"January 28, 2001", :team_name=>"Baltimore Ravens"}, "2002"=>{:date=>"February 3, 2002", :team_name=>"New England Patriots"}, "2003"=>{:date=>"January 26, 2003", :team_name=>"Tampa Bay Buccaneers"}, "2004"=>{:date=>"February 1, 2004", :team_name=>"New England Patriots"}, "2005"=>{:date=>"February 6, 2005", :team_name=>"New England Patriots"}, "2006"=>{:date=>"February 5, 2006", :team_name=>"Pittsburgh Steelers"}, "2007"=>{:date=>"February 4, 2007", :team_name=>"Indianapolis Colts"}, "2008"=>{:date=>"February 3, 2008", :team_name=>"New York Giants"}, "2009"=>{:date=>"February 1, 2009", :team_name=>"Pittsburgh Steelers"}, "2010"=>{:date=>"February 7, 2010", :team_name=>"New Orleans Saints"}, "2011"=>{:date=>"February 6, 2011", :team_name=>"Green Bay Packers"}, "2012"=>{:date=>"February 5, 2012", :team_name=>"New York Giants"}, "2013"=>{:date=>"February 3, 2013", :team_name=>"Baltimore Ravens"}, "2014"=>{:date=>"February 2, 2014", :team_name=>"Seattle Seahawks"}, "2015"=>{:date=>"February 1, 2015", :team_name=>"New England Patriots"}, "2016"=>{:date=>"February 7, 2016", :team_name=>"Denver Broncos"}}
    winner_names = ["Green Bay Packers", "Green Bay Packers", "New York Jets", "Kansas City Chiefs", "Baltimore Colts", "Dallas Cowboys", "Miami Dolphins", "Miami Dolphins", "Pittsburgh Steelers", "Pittsburgh Steelers", "Oakland Raiders", "Dallas Cowboys", "Pittsburgh Steelers", "Pittsburgh Steelers", "Oakland Raiders", "San Francisco 49ers", "Washington Redskins", "Los Angeles Raiders", "San Francisco 49ers", "Chicago Bears", "New York Giants", "Washington Redskins", "San Francisco 49ers", "San Francisco 49ers", "New York Giants", "Washington Redskins", "Dallas Cowboys", "Dallas Cowboys", "San Francisco 49ers", "Dallas Cowboys", "Green Bay Packers", "Denver Broncos", "Denver Broncos", "St. Louis Rams", "Baltimore Ravens", "New England Patriots", "Tampa Bay Buccaneers", "New England Patriots", "New England Patriots", "Pittsburgh Steelers", "Indianapolis Colts", "New York Giants", "Pittsburgh Steelers", "New Orleans Saints", "Green Bay Packers", "New York Giants", "Baltimore Ravens", "Seattle Seahawks", "New England Patriots", "Denver Broncos", "2016–17 AFC champion2016–17 NFC champion", "2017–18 NFC champion2017–18 AFC champion"]

    month_num = data["month"].to_i
    year_num = data["year"].to_i
    team = data["team"].to_s

    not_baby = {result: false}

    if not winner_names.include? team
        # the team never won, not a super bowl baby
        not_baby[:reason] = "The #{team} have never even won a Super Bowl. 😢"
        return not_baby
    end

    birth_year_data = years_data[data["year"]]

    if birth_year_data.nil?
        not_baby[:reason] = "There was no Super Bowl that year 😢"
        return not_baby
    end

    if birth_year_data[:team_name] != team
        # different team won that year :/
        not_baby[:reason] = "The #{birth_year_data[:team_name]} won the Super Bowl that year. 😢"
        return not_baby
    end

    # at this point we know it's the same team and the same year
    win_date =  Date.parse(birth_year_data[:date])
    birthday_str = "#{data['month']}/#{data['day']}/#{data['year']}"
    birth_date = Date.strptime birthday_str, "%m/%d/%Y"

    num_days_diff = (birth_date - win_date).to_i

    if num_days_diff > 250 and num_days_diff < 300
        return {
            result: true,
            date: birth_year_data[:date],
            team: birth_year_data[:team_name],
            days_diff: num_days_diff
        }
    else
        not_baby[:reason] = "But you were so close! Your team the #{team} won the year you were born, but your birthday is #{num_days_diff.abs} days away from the Super Bowl. The average pregnancy length is 280 days."
        return not_baby
    end
end










