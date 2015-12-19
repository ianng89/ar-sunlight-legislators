require_relative '../db/config'
require_relative './models/politician.rb'
require_relative './models/senator.rb'
require_relative './models/representative.rb'

#Print Senators for that state sorted by last name 
# ================================================

# puts "Input a state"
# state = gets.chomp

# puts "Senators"
# senators = Politician.where(title: "Sen", state: state).order(lastname: :asc)
# # p senators.firstname
# senators.each do|x|
# 	p x.firstname + " " + x.lastname + " " + "(#{x.party})"
# end

# puts "" 

# puts "Representatives"
# representatives = Politician.where(title: 'Rep', state: state).order(lastname: :asc)
# representatives.each do |x|
# 	p x.firstname + " " + x.lastname + " " + "(#{x.party})"
# end

# SELECT firstname * FROM politicians
# WHERE state = input
# SORT BY Last name
# ================================================


#Print senators given gender
# ================================================
# puts "Input a gender (M/F)"
# gender = gets.chomp


# senators = Politician.where(gender: gender, title: 'Sen', in_office: true)
# male_sen = senators.count(:id)
# total_senators = Politician.where(title: 'Sen', in_office: true).count
# puts "Male Senators: " + male_sen.to_s 
# puts "Total Senators: " + total_senators.to_s
# total = (male_sen.to_f / total_senators) *100
# puts "Percentage: " + total.round(2).to_s + "%"

# puts ""


# representatives = Politician.where(gender: gender, title: 'Rep', in_office: true)
# male_rep = representatives.count(:id)
# total_representatives = Politician.where(title: 'Rep', in_office: true).count
# puts "Male Representatives:" + male_rep.to_s 
# puts "Total Representatives: " + total_representatives.to_s
# total2 = (male_rep.to_f / total_representatives) *100
# puts "Percentage:" + total2.round(2).to_s + "%"
# ================================================

#Print list of states 
# ================================================
# puts "List"
# # states = Politician.where(in_office: true)
# states = Politician.group(:state).order("count_title desc").count("title")
# states.each do |k,v|
# 		a = Politician.where(state: k, in_office: true).group(:title).count(:title)
# 		p "#{k}: #{a["Sen"]} Senators, #{a["Rep"]} Representative(s)"
# 			end

#Count
# ================================================
# senators = Politician.where(title: 'Sen').count
# representatives = Politician.where(title: 'Rep').count
# puts "Senators: " + senators.to_s
# puts "Representatives: " + representatives.to_s
# ================================================

# #Delete
# # ================================================
# losers = Politician.delete_all(in_office: false)

# senators = Politician.where(title: 'Sen').count
# representatives = Politician.where(title: 'Rep').count
# puts "Senators: " + senators.to_s
# puts "Representatives: " + representatives.to_s
# ================================================
