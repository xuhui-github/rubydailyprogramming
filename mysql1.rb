#!/usr/bin/ruby

require 'mysql'
con=Mysql.new('localhost','root','flower','employees');
rs=con.query('select * from employees');
p con.affected_rows()
rs.free
con.close
