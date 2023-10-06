class GeneralsController < ApplicationController
	def index
		@countries = Country.all
		@generals = General.all
	end

	def show
		@general = General.find(params[:id])
	end
end