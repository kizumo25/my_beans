class BeansController < ApplicationController
	def index
		@beans = Bean.all
	end

	def show
		@bean = Bean.find(params[:id])
	end

	def new
		@bean = Bean.new
	end

	def create
		@bean = Bean.new(bean_params)
		if @bean.save
			flash[:success] = "あなたのコーヒー豆が登録されました！"
			redirect_to '/beans'
		end
	end

	def edit
		@bean = Bean.find(params[:id])
	end

	def update
		@bean = Bean.find(params[:id])
		@bean.update!(bean_params)
		flash[:success] = "あなたのコーヒー豆が編集されました！"
		redirect_to '/beans'
	end

	def destroy
		@bean = Bean.find(params[:id])
		@bean.destroy
		flash[:success] = "コーヒー豆が削除されまそた！"
		redirect_to '/beans'
	end

	private
		def bean_params
			params.require(:bean).permit(:name)
		end
end
