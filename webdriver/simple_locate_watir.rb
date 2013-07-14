require 'watir-webdriver'

dr = Watir::Browser.new :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'form.html'))
puts file_path
dr.goto file_path

# by id
dr.text_field(:id, 'inputEmail').click

# by name
dr.text_field(:name, 'password').click

# by tagname
puts dr.form.attribute_value(:class)

# by class_name
e = dr.div(:class, 'controls')
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', e)
sleep 1

# by link text
link = dr.link(:text, 'register')
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', link)
sleep 1

# by partial link text
link = dr.link(:text, /reg/)
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', link)
sleep 1

# by css selector
div = dr.element(:css, '.controls')
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', div)
sleep 1
=begin
# by xpath
dr.find_element(:xpath, '/html/body/form/div[3]/div/label/input').click
=end
sleep 2
dr.quit