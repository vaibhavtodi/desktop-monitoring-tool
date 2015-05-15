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
    

  # Checks for OS detail & along side saves the System_log details
  def check_os
    # Open the XML file for parsing
    f = File.open("tmp/xml_files/a.xml", "r")
      doc = Nokogiri::XML(f)
    f.close

    # Variable that holds the name of the OS
    str = ""
    
    # Hash that stores key value pair for System Log
    sys = Hash.new

    doc.xpath('//sys').children.each do |node|
      if !node.content.blank? then
        
        if node.matches? ('os_group') then
          str = node.content
        end

        if node.matches?('form_factor') || node.matches?('hostname') || node.matches?('os_name') ||  node.matches?('os_version') || node.matches?('serial') || node.matches?('model') || node.matches?('timestamp') then
          sys[node.name] = node.content
        end
      end
    end

    # Saving the (System_log) values to the Database
    s = SystemLog.new(sys)
    s.save

    # Check for OS_Name and then direct it to the proper action for data extraction
    if str.eql? ("Windows") then
      redirect_to :controller => 'sys_tem', :action => 'parse_win'
    else
      redirect_to :controller => 'sys_tem', :action => 'parse_lin'
    end
  end
end