class HomeController < ActionController::Base
	def id_search
        business = Business.find(params[:id])
    	render json: business
    end

    def page_search
	    @businesses = render json: Business.paginate(:page => params[:page], per_page: 50)
    end
end