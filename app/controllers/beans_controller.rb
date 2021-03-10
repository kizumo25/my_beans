class BeansController < ApplicationController

	before_action :find_bean, only: [:show, :edit, :update, :destroy]

	def index
		@beans = Bean.all
	end

	def show
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
	end

	def update
		@bean.update!(bean_params)
		flash[:success] = "あなたのコーヒー豆が編集されました！"
		redirect_to '/beans'
	end

	def destroy
		@bean.destroy
		flash[:success] = "コーヒー豆が削除されまそた！"
		redirect_to '/beans'
	end

	private

		def find_bean
			@bean = Bean.find(params[:id])
		end

		def bean_params
			params.require(:bean).permit(:name, :picture)
		end
end
