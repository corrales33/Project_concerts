class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
	end
	def new
		@concert = Concert.new
	end
	def show
		@concert = Concert.find(params[:id])
	end
	def edit
		@concert = Concert.find(params[:id])
	end
	def create
		@concert = Concert.new(concert_params)
		
		if @concert.save
		redirect_to concert_path(@concert)
		else 
		render :new
		end
	end
	def update
		@concert = Concert.find(params[:id])
		@concert.update(concert_params)
		redirect_to concert_path(@concert)
	end
	def destroy
		@concert = Concert.find(params[:id])
		@concert.destroy
		redirect_to concerts_path
	end
	def like
       	@concert = Concert.find(params[:id])
      	@concert.likes += 1
       	@concert.save        
       	redirect_to concert_path(@concert)
   	end
   	def topten
   		@top_ten = Concert.order(:likes).reverse_order.limit(10)
   	end
	private
		def concert_params
			params.require(:concert).permit(:band_name, :venue, :city, :date, :price, :description)
		end
end
