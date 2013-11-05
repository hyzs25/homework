
require 'win32ole'  
outlook = WIN32OLE.new('Outlook.Application')  
		message = outlook.CreateItem(0)  
		message.Subject = 'Subject line here'  
		message.Body = 'This is the body of your message.'  
		message.To = '119966710@qq.com'  
		message.Attachments.Add('D:\automation\homework\lazyman\app\reports\20131028_171918.html', 1)  
		message.Send 