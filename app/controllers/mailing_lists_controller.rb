class MailingListsController < ApplicationController


	def new
		@recipient = MailingList.new
	end

	def create
		@recipient.save(recipient_params)
		redirect_to root_path
	end

	private 

	def	recipient_params
		params.require(:mailing_list).permit(:recipient_name, :recipient_email)
	end

end