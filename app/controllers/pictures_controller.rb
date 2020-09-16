class PicturesController < ApplicationController
	before_action :set_pic, only: %i(show edit update destroy)

	def index
		@pics = Picture.all.order('created_at DESC')
	end

	def new
		@pic = current_user.pictures.build
	end

	def create
		@pic = current_user.pictures.build(pic_params)

		if @pic.save
			redirect_to @pic, notice: 'Your picture was posted'
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @pic.update(pic_params)
			redirect_to @pic, notice: 'Congrats! Pic was updated'
		else
			render :edit
		end
	end

	def destroy
		@pic.destroy
		redirect_to root_path
	end

	private
	def set_pic
		@pic = Picture.find(params[:id])
	end

	def pic_params
		params.require(:picture).permit(:title, :description)
	end
end
