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

  end


  def parse
  	
  end

  
  def display
  end


  def store
  	#redirect_to :controller => 'system', :action => 'sys'
  end
  
end
