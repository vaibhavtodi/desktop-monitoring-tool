class RecxmlController < ApplicationController

  def rec_xml
    # Reads xml file pushed by the client from the buffer
    xmlbuf = params[:form_systemXML]
     
    # Parsing & saving the xml to a local file   
    #xmlfile = File.open("tmp/xml_files/a.xml", "w")
    #  doc = Nokogiri::XML(xmlbuf) do |config|
    #    config.strict.noblanks
    #  end
    #  xmlfile.write(doc)
    #xmlfile.close

    redirect_to :action => 'check_os'
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
  
      