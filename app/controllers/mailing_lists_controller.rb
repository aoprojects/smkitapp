class MailingListsController < ApplicationController


	def new
		@recipient = MailingList.new
	end

	def create
		@recipient = recipient.build(recipient_params)

	    respond_to do |format|
	      if @recipient.save
	        format.html { redirect_to root_path, notice: 'You have successfully been subscribed.' }
	      else
	        format.html { render :new }
	      end
	    end
	end

	private 

	def	recipient_params
		params.require(:mailing_list).permit(:recipient_name, :recipient_email)
	end

end