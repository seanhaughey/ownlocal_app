class HomeController < ActionController::Base
	def id_search
		id = params[:id]
		if id == id.to_i.to_s
	        @business = Business.find_by_id(params[:id])
	        if @business
	    		render json: @business
	    	else
	    		render :file => "#{Rails.root}/public/404.html", :status => 404
	    	end
	    else
    		render :file => "#{Rails.root}/public/404.html", :status => 404
	    end
    end

    # def page_search
    # 	page = params[:page]
    # 	if page == ""
    # 		render :file => "#{Rails.root}/public/404.html", :status => 404
    # 	else page.is_a? Float
	   #  	@businesses = Business.paginate(:page => params[:page], per_page: 50)
	   #  	if @businesses.out_of_bounds?
	   #  		render :file => "#{Rails.root}/public/404.html", :status => 404
	   #  	else
	   #  		render json: { "businesses": @businesses }
	   #  	end
	   #  end
    # end

    def page_search
    	page = params[:page]
    	
    	if page == page.to_i.to_s
	    	@businesses = Business.paginate(:page => params[:page], per_page: 50)
	    	if @businesses.out_of_bounds?
	    		render :file => "#{Rails.root}/public/404.html", :status => 404
	    	else
	    		render json: { "businesses": @businesses }
	    	end
	    else
    		render :file => "#{Rails.root}/public/404.html", :status => 404
	    end
    end

end