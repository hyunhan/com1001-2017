#!/usr/bin/ruby
print "HTTP/1.0 200 OK\r\n"
print "Content-type: text/html\r\n\r\n"

TIMES_TABLE = 3
LIMIT = 12

title = "#{TIMES_TABLE} times table"

html = %{<html>
  <head><title>#{title}</title>
  <body>
    <h1>#{title}</h1>
    <ul>}

for i in 1..LIMIT
  result = i * TIMES_TABLE
  text = "#{TIMES_TABLE} times #{i} = #{result}"
  html += "\n\t\t\t<li>#{text}</li>"
end

html += %{
    </ul>
  </body>
</html>}

puts html