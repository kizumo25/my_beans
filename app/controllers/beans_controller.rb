class BeansController < ApplicationController
	def index
		@beans = Bean.all
	end

	def new
		@bean = Bean.new
	end

	def create
		@bean = Bean.create
	end

end
