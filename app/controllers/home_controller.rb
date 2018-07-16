class HomeController < ApplicationController
    
    def trash_em
      @trash_em = List.where(:completed => true).destroy_all
      redirect_to lists_url, notice: 'All marked items were deleted.' 
    end
    
    def trash_em_all
      @trash_em = List.all.destroy_all
      redirect_to lists_url, notice: 'All items were deleted.' 
    end
    
end
