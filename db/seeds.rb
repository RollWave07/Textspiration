# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coding = Type.create(message_type:"codespiration")
type_id = coding.id

eric = User.create(name:"Eric", phone:8588869929, email:"eric.boggs@ac4d.com", password:"hello123")
chris = User.create(name:"Chris", phone:4122256085, email:"cboette@gmail.com", password:"hello123")
elaine = User.create(name:"Elaine", phone:9795713665, email:"imalooney@gmail.com", password:"hello123")

# eric.channels.create(type_id:type_id)
# chris.channels.create(type_id:type_id)
# elaine.channels.create(type_id:type_id)

Message.create(type_id:type_id, quote:"First, solve the problem. Then, write the code.")
Message.create(type_id:type_id, quote:"It's not at all important to get it right the first time. It's vitally important to get it right the last time.")
Message.create(type_id:type_id, quote:"Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.")
Message.create(type_id:type_id, quote:"Any fool can write code that a computer can understand. Good programmers write code that humans can understand.")
Message.create(type_id:type_id, quote:"Programs must be written for people to read, and only incidentally for machines to execute.")
Message.create(type_id:type_id, quote:"There are 10 types of people in the world: those who understand binary, and those who don’t.")
Message.create(type_id:type_id, quote:"A ship in port is safe, but that is not what ships are for. Sail out to sea and do new things.")
Message.create(type_id:type_id, quote:"Don’t worry if it doesn’t work right. If everything did, you’d be out of a job.")
