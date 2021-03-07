class BeansController < ApplicationController
	def index
		@beans = Bean.all
	end

	def show
	end

	def new
		@bean = Bean.new
	end

	def edit
	end

	def create
		@bean = Bean.new
		if @bean.save
			flash[:success] = "あなたのコーヒー豆が登録されました！"
			redirect_to '/beans'
		end
	end

end
