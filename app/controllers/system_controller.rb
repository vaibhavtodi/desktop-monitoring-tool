class SystemController < ApplicationController

  def parse_win
    # Opening XML file for reading
    f = File.open("tmp/xml_files/a.xml", "r")
      doc = Nokogiri::XML(f)
    f.close
  
    # Extracting the content for System
    sys = Hash.new  
      doc.xpath('//sys').children.each do |node|
        if !node.blank? then
          sys[node.name] = node.content
        end 
      end
      puts "VALUES IN System - Hash"
      pp sys

    # Extracting the content for Windows
    win = Hash.new  
      doc.xpath('//windows').children.each do |node|
        if !node.blank? then
          win[node.name] = node.content
        end 
      end
      puts "VALUES IN Windows - Hash"
      pp win

    # Extracting the content for BIOS
    bs = Hash.new  
      doc.xpath('//bios').children.each do |node|
        if !node.blank? then
          bs[node.name] = node.content
        end 
      end
      puts "VALUES IN BIOS - Hash"
      pp bs

    # Extracting the content for SCSI Controller
    scsi_c = Array.new()
      scsi = Hash.new
        count = 0
        doc.xpath('//scsi_controller').children.each do |node|
          if !node.blank? then
            count += 1
            scsi[node.name] = node.content
          end

          if count == 4 then
            scsi_c << scsi
            count = 0
            scsi = Hash.new
          end
        end
        puts "VALUES IN SCSI Controller - array of hashes"
        pp scsi_c

    # Extracting the content for Processor
    proc = Hash.new  
      doc.xpath('//processor').children.each do |node|
        if !node.blank? then
          proc[node.name] = node.content
        end 
      end
      puts "VALUES IN Processor - Hash"
      pp proc

    # Extracting the content for Memory
    memory = Array.new()
      mem = Hash.new
        count = 0
        doc.xpath('//slot').children.each do |node|
          if !node.blank? then
            count += 1
            mem[node.name] = node.content
          end

          if count == 8 then
            memory << mem
            count = 0
            mem = Hash.new
          end
        end
        puts "VALUES IN Memory - array of hashes"
        pp memory

    # Extracting the content for Mother Board
    m_board = Hash.new  
      doc.xpath('//motherboard').children.each do |node|
        if !node.blank? then
          m_board[node.name] = node.content
        end 
      end
      puts "VALUES IN Mother Board - Hash"
      pp m_board

    # Extracting the content for Optical Drives
    o_drive = Array.new()
      od = Hash.new
        count = 0
        doc.xpath('//optical_drive').children.each do |node|
          if !node.blank? then
            count += 1
            od[node.name] = node.content
          end

          if count == 5 then
            o_drive << od
            count = 0
            od = Hash.new
          end
        end
        puts "VALUES IN Optical Drives - array of hashes"
        pp o_drive

    # Extracting the content for Modem
    modem = Array.new()
      md = Hash.new
        count = 0
        doc.xpath('//modem').children.each do |node|
          if !node.blank? then
            count += 1
            md[node.name] = node.content
          end

          if count == 6 then
            modem << md
            count = 0
            md = Hash.new
          end
        end
        puts "VALUES IN Modem - array of hashes"
        pp modem

    # Extracting the content for Video Cards
    v_card = Array.new()
      vc = Hash.new
        count = 0
        doc.xpath('//video_card').children.each do |node|
          if !node.blank? then
            count += 1
            vc[node.name] = node.content
          end

          if count == 3 then
            v_card << vc
            count = 0
            vc = Hash.new
          end
        end
        puts "VALUES IN Video Card - array of hashes"
        pp v_card

    # Extracting the content for Monitors
    monitor = Array.new()
      ms = Hash.new
        count = 0
        doc.xpath('//monitor').children.each do |node|
          if !node.blank? then
            count += 1
            ms[node.name] = node.content
          end

          if count == 8 then
            monitor << ms
            count = 0
            ms = Hash.new
          end
        end
        puts "VALUES IN Monitors - array of hashes"
        pp monitor

    # Extracting the content for Sound Cards
    s_card = Array.new()
      sc = Hash.new
        count = 0
        doc.xpath('//sound_card').children.each do |node|
          if !node.blank? then
            count += 1
            sc[node.name] = node.content
          end

          if count == 3 then
            s_card << sc
            count = 0
            sc = Hash.new
          end
        end
        puts "VALUES IN Sound Card - array of hashes"
        pp s_card

    # Extracting the content for Hard Disk
    hrd_dsk = Array.new()
      hd = Hash.new
        count = 0
        doc.xpath('//hard_disk').children.each do |node|
          if !node.blank? then
            count += 1
            hd[node.name] = node.content
          end

          if count == 12 then
            hrd_dsk << hd
            count = 0
            hd = Hash.new
          end
        end
        puts "VALUES IN Hard Disk - array of hashes"
        pp hrd_dsk

    # Extracting the content for Partition
    partition = Array.new()
      pr = Hash.new
        count = 0
        doc.xpath('//partition').children.each do |node|
          if !node.blank? then
            count += 1
            pr[node.name] = node.content
          end

          if node.matches?('partition_bootable') then
            count -= 1
          end

          if count == 15 then
            partition << pr
            count = 0
            pr = Hash.new
          end
        end
        puts "VALUES IN Partitions - array of hashes"
        pp partition

    # Extracting the content for Shares
    shrs = Array.new()
      sh = Hash.new
        count = 0
        doc.xpath('//share').children.each do |node|
          if !node.blank? then
            count += 1
            sh[node.name] = node.content
          end

          if count == 4 then
            shrs << sh
            count = 0
            sh = Hash.new
          end
        end
        puts "VALUES IN Shares - array of hashes"
        pp shrs

    # Extracting the content for Network Card
    n_card = Array.new()
      nc = Hash.new
        count = 0
        doc.xpath('//network_card').children.each do |node|
          if !node.blank? then
            count += 1
            nc[node.name] = node.content
          end

          if count == 21 then
            n_card << nc
            count = 0
            nc = Hash.new
          end
        end
        puts "VALUES IN Network Card - array of hashes"
        pp n_card
  
    # Extracting the content for Logs
    log = Array.new()
      lg = Hash.new
        count = 0
        doc.xpath('//log').children.each do |node|
          if !node.blank? then
            count += 1
            lg[node.name] = node.content
          end

          if count == 5 then
            log << lg
            count = 0
            lg = Hash.new
          end
        end
        puts "VALUES IN Logs - array of hashes"
        pp log
    
    # Extracting the content for Users
    usr = Array.new()
      us = Hash.new
        count = 0
        doc.xpath('//user').children.each do |node|
          if !node.blank? then
            count += 1
            us[node.name] = node.content
          end

          if count == 11 then
            usr << us
            count = 0
            us = Hash.new
          end
        end
        puts "VALUES IN Users - array of hashes"
        pp usr

    # Extracting the content for Softwares
    software = Array.new()
      sft = Hash.new
        count = 0
        doc.xpath('//package').children.each do |node|
          if !node.blank? then
            if node.matches?('software_installed_by') || node.matches?('software_installed_on')
              #puts " DO NOTHING HERE  --- ignoring these two fields   "
            else
              count += 1
              sft[node.name] = node.content
            end
          end

          if count == 13 then
            software << sft
            count = 0
            sft = Hash.new
          end
        end
        puts "VALUES IN Softwares - array of hashes"
        pp software

    # Extracting the content for Services
    service = Array.new()
      srv = Hash.new
        count = 0
        doc.xpath('//service').children.each do |node|
          if !node.blank? then
            count += 1
            srv[node.name] = node.content
          end

          if count == 8 then
            service << srv
            count = 0
            srv = Hash.new
          end
        end
        puts "VALUES IN Servces - array of hashes"
        pp service
    
    # Extracting the content for Software Keys
    sft_key = Array.new()
      sk = Hash.new
        count = 0
        doc.xpath('//key').children.each do |node|
          if !node.blank? then
            count += 1
            sk[node.name] = node.content
          end

          if count == 4 then
            sft_key << sk
            count = 0
            sk = Hash.new
          end
        end
        puts "VALUES IN Software Keys - array of hashes"
        pp sft_key

    # Extracting the content for Routes
    route = Array.new()
      rt = Hash.new
        count = 0
        doc.xpath('//route').children.each do |node|
          if !node.blank? then
            count += 1
            rt[node.name] = node.content
          end

          if count == 6 then
            route << rt
            count = 0
            rt = Hash.new
          end
        end
        puts "VALUES IN Routes - array of hashes"
        pp route
  end
end
