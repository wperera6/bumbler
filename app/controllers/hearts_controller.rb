class HeartsController < ApplicationController
	def create
		@heart = Heart.new(heart_params)

	  
	    if @heart.save
	        redirect_to @heart.post, notice: 'Loved!'
	    else
	        redirect_to root_url, notice: "Unloved!"
	    end
	end	
	

	private
	    # Never trust parameters from the scary internet, only allow the white list through.
	    def heart_params
	      params.require(:heart).permit(:post_id)
	    end
end  