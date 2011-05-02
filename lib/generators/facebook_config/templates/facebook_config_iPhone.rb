class FacebookController < ApplicationController

  def getFacebook
    if (params[:area_id].nil?)
      facebook = Facebook.getAll
    else
      facebook = Facebook.getFacebook(params[:area_id].to_i)
    end

    if (facebook.nil? || facebool.empty?)
      render :text => {:success => false}.to_json
    else
      render :text => facebook.entries.to_json
    end
  end

  def create
    facebook_config = FacebookModel.new
    facebook_config.account_name = params[:account_name]
    facebook_config.account_number = params[:account_number].to_i
    facebook_config.priority = params[:priority].to_i
    facebook_config.area_id = params[:area_id].to_i

    if facebook_config.save
      render :text => {:success => true}.to_json
    else
      render :text => {:success => false}.to_json
    end
  end

end
