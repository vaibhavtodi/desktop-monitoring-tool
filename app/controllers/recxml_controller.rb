class RecxmlController < ApplicationController

  def rec_xml
    # Reads xml file pushed by the client from the buffer
    xmlbuf = params[:form_systemXML]
     
    # Parsing & saving the xml to a local file   
    xmlfile = File.open("tmp/xml_files/a.xml", "w")
      doc = Nokogiri::XML(xmlbuf) do |config|
        config.strict.noblanks
      end
      xmlfile.write(doc)
    xmlfile.close

    # Redirecting for starting the parse based on the OS
    redirect_to :action => 'check_os'

    # Redirecting for converting XML to JSON
    #redirect_to :action => 'convert_to_json'
  end

  

  def convert_to_json
    # Reading & Converting file using the crack gem
    myXML  = Crack::XML.parse(File.read("tmp/xml_files/a.xml"))
    myJSON = myXML.to_json
      
    # Saving the JSON to file  
    f = File.open("tmp/xml_files/sample.json", "w")
      f.write(myJSON)
    f.close
  end
    


  def check_os
    # Open the XML file for parsing
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

    # Check for OS_Name and then direct it to the proper action
    if str.eql? ("Windows") then
      puts "!!!!!!!!!!!! REDIRECTING TO WINDOWS PARSER !!!!!!!!!!!!"
      redirect_to :controller => 'sys_tem', :action => 'parse_win'
    else
      puts "!!!!!!!!!!!! REDIRECTING TO LINUX PARSER !!!!!!!!!!!!"
      redirect_to :controller => 'sys_tem', :action => 'parse_lin'
    end
  end
end