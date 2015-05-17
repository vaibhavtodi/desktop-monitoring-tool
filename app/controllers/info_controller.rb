class InfoController < ApplicationController


  def load_data
    $sys = SysTem.where(os_family: params[:os], hostname: params[:hn]).first
    #pp $sys

    puts "*****************************************************************"
    puts " OS FAMILY ::  #{$sys.os_family}"
    puts "*****************************************************************"

    redirect_to :action => 'index'
  end

  def index
    @win = $sys.windows
    #pp @win
  end

  def hardware
    @bs = $sys.bios
    #pp @bs

    @hd = $sys.hard_disks
    #pp @hd

    @mem = $sys.memorys
    #pp @mem

    @mthr_brd = $sys.mother_boards
    #pp @mthr_brd

    @proc = $sys.processors
    #pp @proc

    @ncard = $sys.network_cards
    #pp @ncard

    @part = $sys.partitions
    #pp @part

    @vcard = $sys.video_cards
    #pp @vcard

    @scard = $sys.sound_cards
    #pp @scard

    @op_drive = $sys.optical_drifes
    #pp @op_drive

    @scsi_c = $sys.scsi_cntrls
    #pp @scsi_c

    @modm = $sys.modems
    #pp @modm

    @mnt = $sys.mntrs
    #pp @mnt

    @pf = $sys.pagefiles
    #pp @pf

    @ip_add = $sys.ipadds
    #pp @ip_add

  end

  def software
    @sft = $sys.softwares
    #pp @sft

    @sv = $sys.services
    #pp @sv

    @sft_ky = $sys.sft_keys
    #pp @sft
  end

  def user
    @us = $sys.usrs
    #pp @us
  end

  def lgrs
    @lg = $sys.logs
    #pp @lg

    @sh = $sys.shares
    #pp @sh

    @rt = $sys.routes
    #pp @rt
  end
end
