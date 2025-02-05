# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file
puts "there are #{Salesperson.all.count} salesperson"
# 2. insert 1-2 rows in salespeople table.
new_salespeople = Salesperson.new
puts new_salespeople.inspect
new_salespeople["first_name"] = "Sofia"
new_salespeople["last_name"] = "de Coulon"
new_salespeople["email"] = "sofiadecoulon@hotmail.com"
new_salespeople.save
puts new_salespeople.inspect

new_salespeople = Salesperson.new
puts new_salespeople.inspect
new_salespeople["first_name"] = "Ben"
new_salespeople["last_name"] = "Block"
new_salespeople["email"] = "B.block@hotmail.com"
new_salespeople.save
puts new_salespeople.inspect



# 3. write code to display how many salespeople rows are in the database
puts "there are #{Salesperson.all.count} salesperson"
# ---------------------------------
# salesperson: 2

# 4. modify/update column data for a row in the salespeople table.
sofia = Salesperson.find_by({"first_name" => "Sofia", "last_name" => "de Coulon"})
sofia["email"] = "sofi2984@hotmail.com"
sofia.save
puts sofia.inspect


# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
for person in salespeople
first_name = person["first_name"]
last_name = person["last_name"]
name = "#{first_name} #{last_name}"
puts name
end
# ---------------------------------
# salesperson: 2
# Ben Block
# Brian Eng
