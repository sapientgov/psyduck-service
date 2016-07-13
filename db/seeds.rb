# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Office.delete_all
Office.create({"name":"Burlington, VT", "address":"64 Gricebrook Road Saint Albans, VT 05478"})
Office.create({"name":"Dallas, TX", "address":"6500 Campus Circle Drive East Irving, TX 75063"})
Office.create({"name":"Honolulu, HI", "address":"500 Ala Moana Boulevard Building 2, Room 400 Honolulu, Hawaii 96813"})
Office.create({"name":"Las Vegas, NV", "address":"5650 West Badura Avenue, Suite 100 Las Vegas, NV 89118"})
Office.create({"name":"Los Angeles, CA", "address":"300 North Los Angeles Street Los Angeles, CA 90012"})
Office.create({"name":"Miami, FL", "address":"8801 NW 7th Avenue Miami, FL 33150"})
Office.create({"name":"New Orleans, LA", "address":"1250 Poydras Street, Suite 1800, New Orleans, LA 70113"})
Office.create({"name":"San Francisco, CA", "address":"444 Washington Street San Francisco, CA 94111"})
Office.create({"name":"San Juan, PR", "address":"273 Ponce De Leon Ave., Suite 1100, San Juan, PR  00917"})
Office.create({"name":"St. Thomas, VI", "address":"8000 Nisky Center, Suite 1A Charlotte Amalie St. Thomas, USVI 00802"})
Office.create({"name":"Washington, DC", "address":"2675 Prosperity Avenue Fairfax, VA 22031-4906"})
