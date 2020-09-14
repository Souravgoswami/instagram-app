class PicturesController < ApplicationController
	before_action :set_pic, only: %i(show edit update destroy)

	def index
		@pics = Picture.all
	end

	def new
		@pic = Picture.new
	end

	def create
		@pic = Picture.new(pic_params)

		if @pic.save
			redirect_to @pic, notice: 'Your picture was posted'
		else
			render 'new'
		end
	end

	def show
	end

	private
	def set_pic
		@pic = Picture.find(params[:id])
	end

	def pic_params
		params.require(:picture).permit(:title, :description)
	end
end
