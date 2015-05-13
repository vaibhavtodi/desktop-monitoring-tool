class RecxmlController < ApplicationController

  def rec_xml
    
      myXML  = Crack::XML.parse(File.read("tmp/xml_files/a.xml"))
      myJSON = myXML.to_json
      
    f = File.open("tmp/xml_files/sample.json", "w")
      f.write(myJSON)
    f.close


    #redirect_to :action => 'check_os'
  end
    
  def check_os

    f = File.open("tmp/xml_files/a.xml", "r")
      doc = Nokogiri::XML(f)
    f.close

    str = ""
    doc.xpath('//sys').children.each do |node|
      if !node.blank? then
        #puts "#{node.name}  ::  #{node.content}"
        if node.matches? ('os_group') then
          str = node.content
        end
      end
    end
    puts "OS_group  ::::  #{str}"

    if str.eql? ("Windows") then
      puts "!!!!!!!!!!!! REDIRECTING TO WINDOWS PARSER !!!!!!!!!!!!"
      redirect_to :controller => 'system', :action => 'parse_win'
    else
      puts "!!!!!!!!!!!! REDIRECTING TO LINUX PARSER !!!!!!!!!!!!"
      redirect_to :controller => 'system_ubuntu', :action => 'parse_lin'
    end
  end
end
  
      