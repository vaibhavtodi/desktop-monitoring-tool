class InfoController < ApplicationController

  def index
    $sys = SysTem.where(os_family: params[:os], hostname: params[:hn]).first
    pp $sys
    
    #redirect_to :action => 'user'
  end

  def software
    @sft = $sys.softwares
    #pp @sft

    @sv = $sys.services
    #pp @sv

    @sft_ky = $sys.sft_keys
    #pp @sft
  end

  def hardware
    @bs = $sys.bios
    #pp @bs

    @hd = $sys.hard_disks
    #pp @hd

    @mem = $sys.memorys
    #pp @mem
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
