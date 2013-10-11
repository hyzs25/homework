#encoding:utf-8
class LoginPage < LazymanPage

	page_url 'http://www.renren.com'

	text_field :email, :id => 'email'
	text_field :password, :id => 'password'
	button :login, :id => 'login'

	def login_action e,p
		self.email = e
		self.password = p
		self.login
		sleep 2
		turn_to IndexPage
	end
end