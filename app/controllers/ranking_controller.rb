class RankingController < ApplicationController
  def have
    @haves = Have.group(:item_id).order('count_all desc').limit(10).count

    
  end

  def want
    @wants = Want.group(:item_id).order('count_all desc').limit(10).count
  end
end
