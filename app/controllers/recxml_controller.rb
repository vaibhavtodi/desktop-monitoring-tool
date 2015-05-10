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
    sys = Hash.new  
      doc.xpath('//sys').children.each do |node|
        if !node.blank? then
          #puts "#{node.name}   ::   #{node.content}"
          sys[node.name] = node.content
        end 
      end
        
    # Extracting the content for Network Card
    nc_com = Array.new
      nc = Hash.new
        count = 0 
        i = 0
        doc.xpath('//network_card').children.each do |node|
            
            if !node.blank? then
              count += 1
              #puts "Count = #{count} <<----->> #{node.name}   ::   #{node.content}"
              nc[node.name] = node.content
            end

            if count == 21 then
              #puts "------------------ Content of hash ----------------------"
              #nc.each { |k, v| puts "#{k}   ::   #{v}" }
              
              nc_com[i] = nc
              
              puts "?????????????------------------------------?????????????"
              pp nc_com[i]
              puts "?????????????------------------------------?????????????"

              nc.clear
              count = 0
              i += 1
            end
        end

        puts "Lenght of array :: #{nc_com.length}"
        puts "Count of array :: #{nc_com.count}"

  end
end