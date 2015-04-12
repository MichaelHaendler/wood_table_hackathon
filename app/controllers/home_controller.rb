class HomeController < ApplicationController
  def index
  end


	def test_input_helper

		 p "getting into (((HOME))) test_input_helper!!!!!!!!!!!!!!!!!"

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
