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
  
  redirect_to :action => 'parse'
  end

  def parse

    f = File.open("tmp/xml_files/a.xml", "r")
      doc = Nokogiri::XML(f)
    f.close
  
    # Extracting the content for System
    sys = Array.new  
      doc.xpath('//sys').each do |node|
        sys << node.content      
      end

      puts "Content of the array - System"
      sys.each do |a|
        puts "#{a} --- "
      end

    # Extracting the content for Network Card
    nw = Array.new  
      doc.xpath('//network_card').each do |node|
        nw << node.content      
      end

      puts "Content of the array - network card"
      nw.each do |a|
        puts "#{a} --- "
      end

        #node.traverse {|node|}
        #node.each do |key, value|
        #puts node.attr.
        #puts node.content

        #if node.blank?
        #  puts "blank node"
        #else
        #end
        
        #end


  end

end