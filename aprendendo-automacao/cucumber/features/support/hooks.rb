Before	do
	page.driver.browser.manage.window.maximize
	@email = Faker::Internet.email
	@email_cadastrado = 'graciele_ernesto@hotmail.com'
end

After do
  Capybara.reset_sessions!
end
