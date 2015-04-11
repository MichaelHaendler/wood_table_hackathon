class BuildingsController < ApplicationController


	def test

		# zoomy3 = Building.find(2).facility_name
		# # @zoomy2 = Building.find_by(facility_name: "dunkin donuts")
		# # @zoomy1 = Building.find_by(facility_name: "dunkin donuts")

		# p "----------------------#{zoomy3}"

	end	
	
	def test_input_helper

		# p "getting into test_input_helper!!!!!!!!!!!!!!!!!"

		# p "input was: #{params[:data]}"

		# p "input was: #{params[:street_name]}"

		# p "input was: #{params[:house_number]}"

		#post = Building.find(1).facility_name + "----" + params[:data]

		post = Building.find_by(street_name: params[:street_name], building_num: params[:house_number])

		p "post is: #{post.inspect}"

	    respond_to do |format|
	      format.html

	      format.json { render :json => { :status => 'Ok', :message => 'Received', :post => post},:status => 200}
	    end
	end

end
