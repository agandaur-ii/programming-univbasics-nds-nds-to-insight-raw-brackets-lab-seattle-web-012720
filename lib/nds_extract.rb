$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
  
  hash = {}
  row_index = 0 
  
  while row_index < nds.length do
    movies_index = 0 
      while movies_index < nds[row_index][:movies][movies_index].length do
        gross = 0 
        gross += nds[row_index][:movies][movies_index][:worldwide_gross]
        movies_index += 1
      end
      hash[nds[row_index][:name]] = gross
      row_index += 1
  end
   
   hash
  
end


##########

nds_test = [{:name=>"Stephen Spielberg",
  :movies=>
   [{:title=>"Jaws",
     :studio=>"Universal",
     :worldwide_gross=>260000000,
     :release_year=>1975},
    {:title=>"Close Encounters of the Third Kind",
     :studio=>"Columbia",
     :worldwide_gross=>135189114,
     :release_year=>1977},
    {:title=>"Raiders of the Lost Ark",
     :studio=>"Paramount",
     :worldwide_gross=>248159971,
     :release_year=>1981},
    {:title=>"E.T. the Extra-terrestrial",
     :studio=>"Universal",
     :worldwide_gross=>435110554,
     :release_year=>1982},
    {:title=>"Schindler's List",
     :studio=>"Universal",
     :worldwide_gross=>96898818,
     :release_year=>1993},
    {:title=>"Lincoln",
     :studio=>"Buena Vista",
     :worldwide_gross=>182207973,
     :release_year=>2012}]},
 {:name=>"Russo Brothers",
  :movies=>
   [{:title=>"Avengers Endgame",
     :studio=>"Buena Vista",
     :worldwide_gross=>858371337,
     :release_year=>2019},
    {:title=>"Avengers Infinity War",
     :studio=>"Buena Vista",
     :worldwide_gross=>678815482,
     :release_year=>2018},
    {:title=>"Captain America Civil War",
     :studio=>"Buena Vista",
     :worldwide_gross=>408084349,
     :release_year=>2016},
    {:title=>"Captain America The Winter Soldier",
     :studio=>"Buena Vista",
     :worldwide_gross=>259766572,
     :release_year=>2014},
    {:title=>"You, Me and Dupree",
     :studio=>"Universal",
     :worldwide_gross=>75628110,
     :release_year=>2006},
    {:title=>"Welcome to Collinwood",
     :studio=>"Warner Brothers",
     :worldwide_gross=>336620,
     :release_year=>2002}]}

]

def test (nds) 
  hash = {}
  row_index = 0 
  
  while row_index < nds.length do
    movies_index = 0 
    gross = 0 
      while movies_index < nds[row_index][:movies].length do
        #puts movies_index
        gross += nds[row_index][:movies][movies_index][:worldwide_gross]
        puts gross
        movies_index += 1
      end
      hash[nds[row_index][:name]] = gross
      row_index += 1
  end
   
   hash
end

puts test(nds_test)
#puts nds_test[0][:movies].length




