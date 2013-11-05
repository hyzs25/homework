#encoding:utf-8
require 'mail'

Mail.deliver do
   from    'yang.he@renren-inc.com'
   to      'hyzs25@126.com'
   subject 'Here is the image you wanted'
   body    "123"
   add_file 'D:\automation\homework\lazyman\app\reports\20131105_125304.html'

end