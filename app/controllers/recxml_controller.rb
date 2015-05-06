class RecxmlController < ApplicationController
  
  def rec_xml
   	#reads xml file pushed by the client
    xmlbuf = params[:form_systemXML]
	   
	#saving the xml to a local file   
    xmlfile = File.open("tmp/xml_files/a.xml", "w")
		xmlfile.write(xmlbuf)
	xmlfile.close

	redirect_to :action => 'parse'
  end

  def parse
  	#open the file for parsing & parse it
  	f = File.open("tmp/xml_files/a.xml", "r")
		doc = Nokogiri::XML(f) do |config|
  			config.strict.noblanks
		end
	f.close
	
	#saving the parsed content
	pfile = File.open("tmp/xml_files/parsed_file.xml", "w")
		pfile.write(doc)
	pfile.close

	
  end

  def store
  end

end
