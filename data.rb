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

winner_names = ["Green Bay Packers", "Green Bay Packers", "New York Jets", "Kansas City Chiefs", "Baltimore Colts", "Dallas Cowboys", "Miami Dolphins", "Miami Dolphins", "Pittsburgh Steelers", "Pittsburgh Steelers", "Oakland Raiders", "Dallas Cowboys", "Pittsburgh Steelers", "Pittsburgh Steelers", "Oakland Raiders", "San Francisco 49ers", "Washington Redskins", "Los Angeles Raiders", "San Francisco 49ers", "Chicago Bears", "New York Giants", "Washington Redskins", "San Francisco 49ers", "San Francisco 49ers", "New York Giants", "Washington Redskins", "Dallas Cowboys", "Dallas Cowboys", "San Francisco 49ers", "Dallas Cowboys", "Green Bay Packers", "Denver Broncos", "Denver Broncos", "St. Louis Rams", "Baltimore Ravens", "New England Patriots", "Tampa Bay Buccaneers", "New England Patriots", "New England Patriots", "Pittsburgh Steelers", "Indianapolis Colts", "New York Giants", "Pittsburgh Steelers", "New Orleans Saints", "Green Bay Packers", "New York Giants", "Baltimore Ravens", "Seattle Seahawks", "New England Patriots", "Denver Broncos", "2016–17 AFC champion2016–17 NFC champion", "2017–18 NFC champion2017–18 AFC champion"]

def check_date(data)
    month_num = data[:month].to_i
    year_num = data[:year].to_i
    team = data[:team].to_s

    not_baby = {result: false}

    if not winner_names.include? team
        # the team never won, not a super bowl baby
        return not_baby
    end
end










