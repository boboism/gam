#encoding: utf-8

line_seperator = '*'*80

puts "ROLES:#{line_seperator}"[0...80]
%w(admin masterdata_admin).each do |role|
  Role.find_or_create_by_name({ name: role }, without_protection: true)
  puts 'ROLE: ' << role
end
puts line_seperator

puts "USERS:#{line_seperator}"[0...80]
user = User.find_or_create_by_email(name: 'Administrator', email: 'eam@gacmotor.com', password: '1234567890', password_confirmation: '1234567890')
puts 'USER: ' << user.name
user.confirm!
user.roles << Role.where(name: 'admin').first
user.roles << Role.where(name: 'masterdata_admin').first
puts line_seperator

puts "CATEGORIES:#{line_seperator}"[0...80]
puts 'CATEGORY: ' << Category.create(value: "大型设备").value
puts line_seperator
