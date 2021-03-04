require 'rails_helper'

describe 'Home' do
	specify 'タイトル内容の表示' do
		visit '/'
		expect(page).to have_title 'My beans'
	end
end

describe 'About' do
	specify 'タイトル内容の表示' do
		visit '/static_pages/about'
		expect(page).to have_title 'About | My beans'
	end
end

describe 'Contact' do
	specify 'タイトル内容の表示' do
		visit 'static_pages/contact'
		expect(page).to have_title 'Contact | My beans'
	end
end


