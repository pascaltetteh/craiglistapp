# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.delete_all
Section.delete_all
Category.delete_all

City.find_or_create_by(name: "St. Louis", state: "MO")
City.find_or_create_by(name: "Windsor", state: "ON")
City.find_or_create_by(name: "Allentown", state: "PA")

sec = Section.create(name: "community")
Category.find_or_create_by(name: "activities", section_id: sec.id)
Category.find_or_create_by(name: "artists", section_id: sec.id)
Category.find_or_create_by(name: "childcare", section_id: sec.id)
Category.find_or_create_by(name: "classes", section_id: sec.id)

sec = Section.create(name: "Housing")
Category.find_or_create_by(name: "apts", section_id: sec.id)
Category.find_or_create_by(name: "housing swap", section_id: sec.id)
Category.find_or_create_by(name: "storage", section_id: sec.id)
Category.find_or_create_by(name: "office", section_id: sec.id)

sec = Section.create(name: "Services")
Category.find_or_create_by(name: "legal", section_id: sec.id)
Category.find_or_create_by(name: "pet", section_id: sec.id)
Category.find_or_create_by(name: "financial", section_id: sec.id)
Category.find_or_create_by(name: "mobile", section_id: sec.id)

sec = Section.create(name: "jobs" )
Category.find_or_create_by(name: "government", section_id: sec.id)
Category.find_or_create_by(name: "general labour", section_id: sec.id)
Category.find_or_create_by(name: "education", section_id: sec.id)
Category.find_or_create_by(name: "customer service", section_id: sec.id)




