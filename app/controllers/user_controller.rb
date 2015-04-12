class UserController < ApplicationController
protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format =~ %r{application/json} }

  def create 
  	p "got into user/create!!!!!!!!!!!!"

  	p "params is: #{params[:first_name]}"

  	@user = User.new

  end

    # t.string   "organization"
    # t.string   "tax_id"
    # t.string   "email"
    # t.string   "password"
    # t.string   "first_name"
    # t.string   "last_name"
    # t.string   "phone_number"
    # t.string   "job_title"
    # t.string   "confirm_email"

   #localhost:3000/user/create
 #  def create_helper

 #  	p "got into user/create_helper!!!!!!!!!!!!2222222222222"
 #  	p "params is: #{params[:first_name]}"
 #  	p "params is: #{params[:organization]}"


 #  	#create user
 #  	User.create(organization: params[:organization], 
 #  				tax_id: params[:tax_id], 
 #  				email: params[:email_address], 
 #  				password: params[:password], 
 #  				first_name: params[:first_name], 
 #  				last_name: params[:last_name], 
 #  				phone_number: params[:phone_number], 
 #  				job_title: params[:title], 
 #  				confirm_email: params[:confirm_password])

	# #save users info 
	# session[:user_name] = params[:email_address];
	# session[user_id] = User.find_by(email_address: email_address).id #get uses unique id. 




 #  	redirect_to "/user/calendar"

 #  	#render "/user/calendar"

 #  end

  def index
  end

  def calendar

  	p"got into calendar !!!!!!!!!" 

  	p "params[:organization] is: #{params[:organization]}"

  	#create user
  	User.create(organization: params[:organization], 
  				tax_id: params[:tax_id], 
  				email: params[:email_address], 
  				password: params[:password], 
  				first_name: params[:first_name], 
  				last_name: params[:last_name], 
  				phone_number: params[:phone_number], 
  				job_title: params[:title], 
  				confirm_email: params[:confirm_password])

	#save users info 
	session[:user_name] = params[:email_address]
	session[:user_id] = User.find_by(email: params[:email_address]).id #get user's unique id.

  	
  end

  def report
  	
  end

  def my_data

  end

  def audit_request

	    respond_to do |format|
	      format.html

	      # format.json { render :json => { :status => 'Ok', :message => 'Received', :post => post},:status => 200}
	      format.json { render :json => { :status => 'Ok', :message => 'Received'},:status => 200}
	    end

  end


end
