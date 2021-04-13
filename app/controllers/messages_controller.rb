class MessagesController < ApplicationController

	def new
	@message = Message.new
	@shop = Shop.all

	 if params[:keyword].present? 
        @shops = @shops.by_keyword(params[:keyword])
end
end
def create
	@message = Message.create(message_params)
	redirect_to @message
	
end

def show
    @message = Message.new
	@message = Message.find(params[:id])
end

private

def message_params
	params.require(:message).permit(:keywords,:keywords2,:keywords3)
end

end
