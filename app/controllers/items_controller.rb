class ItemsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  def new
    require 'json'
    require 'net/https'
     
    app_id = '1022848979102636108'
    searchTitle = params[:q]
     
    https = Net::HTTP.new('app.rakuten.co.jp', 443)
    https.use_ssl = true
    https.ca_file = 'nil'
    https.verify_mode = OpenSSL::SSL::VERIFY_NONE
    https.verify_depth = 5
     
    https.start {
      response = https.get("/services/api/BooksBook/Search/20130522?format=json&applicationId=#{app_id}&title=#{searchTitle}")
      document = JSON.parse(response.body);
      # print("sssssssss#{document}#######")
      @items = document
      # document['Items'].each{|item|
      #   @items = item['Item']['title']
      # }
    }

    # if params[:q]
    #   response = RakutenWebService::Ichiba::Item.search(
    #     keyword: params[:q],
    #     imageFlag: 1,
    #   )
    #   @items = response.first(20)
    # end
  end

  def show
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end
