class BuildingsController < ApplicationController


	def test

		# zoomy3 = Building.find(2).facility_name
		# # @zoomy2 = Building.find_by(facility_name: "dunkin donuts")
		# # @zoomy1 = Building.find_by(facility_name: "dunkin donuts")

		# p "----------------------#{zoomy3}"

	end	


  # 550 Dudley	
  # building_num: 550,
  # street_name: "Dudley",

  # 889 Harrison
  # building_num: 889,
  # street_name: "Harrison",

  # 27 Isabella
  # building_num: 27,
  # street_name: "Isabella",

  # 8 Notre Dame
  # building_num: 8,
  # street_name: "Notre Dame",

	
	def test_input_helper

		 p "getting into test_input_helper!!!!!!!!!!!!!!!!!"

		# p "input was: #{params[:data]}"

		p "street_name is: #{params[:street_name]}"

		p "building_num is: #{params[:house_number]}"

		#post = Building.find(1).facility_name + "----" + params[:data]

		post = Building.find_by(street_name: params[:street_name], building_num: params[:house_number])

		Building.find_by(street_name: "Dudley",building_num: "500".to_i )

		p "post is: #{post.inspect}"

	    respond_to do |format|
	      format.html

	      format.json { render :json => { :status => 'Ok', :message => 'Received', :post => post},:status => 200}
	    end
	end

end
