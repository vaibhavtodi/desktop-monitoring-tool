class SystemUbuntuController < ApplicationController

def parse_lin
    # Opening XML file for reading
    f = File.open("tmp/xml_files/a.xml", "r")
      doc = Nokogiri::XML(f)
    f.close
  end



end
