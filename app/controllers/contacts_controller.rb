class ContactsController < ApplicationController
	def index
		@contacts = Contact.all
		respond_to do |format|
			format.html
		end
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		respond_to do |format|
			if @contact.save
				format.html { redirect_to root_path }
			else
				render 'new'
			end
		end
	end
	
	private
	def contact_params
		params.require(:contact).permit(:first_name, :last_name, :address, :city, :phone, :email, :state, :zip, :residence, :price, :how_did_you_hear, :imp_feature, :represented_by_broaker, :broaker, :comment)
	end
end
