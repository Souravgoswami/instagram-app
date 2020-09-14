class PicturesController < ApplicationController
	def index
	end

	def new
		@pic = Picture.new
	end

	def create
	end

	private
	def pic_params
		params.require(:pic).permit(:title, :description)
	end
end
