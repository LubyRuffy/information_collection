#!/usr/bin/env ruby
require "open-uri"
require 'nokogiri'

#深交所主版
sjs_main = []
i = 1
loop {
	added = false
	uri = "http://www.szse.cn/szseWeb/FrontController.szse?randnum=0.4319284532684833&ACTIONID=7&AJAX=AJAX-TRUE&CATALOGID=1743_zb&TABKEY=tab1&tab1PAGECOUNT=48&tab1RECORDCOUNT=480&REPORT_ACTION=navigate&tab1PAGENUM=#{i}"
	html_response = nil  
	open(uri) do |http|  
	  html_response = http.read  
	end  
	doc = Nokogiri::HTML(html_response)
	doc.css('tr.cls-data-tr').each do |tr|
		id=tr.css('td')[0].text
		name=tr.css('td')[1].text
		fullname=tr.css('td')[2].text
		website=tr.css('td')[4].text
		sjs_main << [id, name, fullname, website]
		puts "#{id}|#{name}|#{fullname}|#{website}"
		added = true
	end
	
	break unless added
	
	sleep 1
	i+=1
}

#深交所中小版
sjs_sme = []
i = 1
loop {
	added = false
	uri = "http://www.szse.cn/szseWeb/FrontController.szse?randnum=0.4319284532684833&ACTIONID=7&AJAX=AJAX-TRUE&CATALOGID=1743_sme&TABKEY=tab1&tab1PAGECOUNT=75&tab1RECORDCOUNT=744&REPORT_ACTION=navigate&tab1PAGENUM=#{i}"
	html_response = nil  
	open(uri) do |http|  
	  html_response = http.read  
	end  
	doc = Nokogiri::HTML(html_response)
	doc.css('tr.cls-data-tr').each do |tr|
		id=tr.css('td')[0].text
		name=tr.css('td')[1].text
		fullname=tr.css('td')[2].text
		website=tr.css('td')[4].text
		sjs_main << [id, name, fullname, website]
		puts "#{id}|#{name}|#{fullname}|#{website}"
		added = true
	end
	
	break unless added
	
	sleep 1
	i+=1
}


#深交所创业版
sjs_nm = []
i = 1
loop {
	added = false
	uri = "http://www.szse.cn/szseWeb/FrontController.szse?randnum=0.4319284532684833&ACTIONID=7&AJAX=AJAX-TRUE&CATALOGID=1743_nm&TABKEY=tab1&tab1PAGECOUNT=75&tab1RECORDCOUNT=744&REPORT_ACTION=navigate&tab1PAGENUM=#{i}"
	html_response = nil  
	open(uri) do |http|  
	  html_response = http.read  
	end  
	doc = Nokogiri::HTML(html_response)
	doc.css('tr.cls-data-tr').each do |tr|
		id=tr.css('td')[0].text
		name=tr.css('td')[1].text
		fullname=tr.css('td')[2].text
		website=tr.css('td')[4].text
		sjs_main << [id, name, fullname, website]
		puts "#{id}|#{name}|#{fullname}|#{website}"
		added = true
	end
	
	break unless added
	
	sleep 1
	i+=1
}
