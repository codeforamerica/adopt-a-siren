class ThingsController < ApplicationController
  respond_to :json

  def show
    @things = Thing.find_closest(params[:lat], params[:lng], params[:limit] || 1000)
    unless @things.blank?
      for t in @things
          if user_signed_in? && current_user.id == t.user_id then
            t.owned_by_you = true
          else
            t.owned_by_you = false
          end
      end
      render(:json => @things.to_json(:methods => :owned_by_you))
    else
      render(:json => {"errors" => {"address" => [t("errors.not_found", :thing => t("defaults.thing"))]}}, :status => 404)
    end
  end

  def update
    @thing = Thing.find(params[:id])
    if @thing.update_attributes(params[:thing])
      respond_with @thing
    else
      render(:json => {"errors" => @thing.errors}, :status => 500)
    end
  end
end
