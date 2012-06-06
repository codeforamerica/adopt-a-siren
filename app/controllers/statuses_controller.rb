class StatusesController < ApplicationController
  respond_to :json

  def create
    @status = Status.new(:user_id => params[:user],
                          :thing_id => params[:thing],
                          :statusCode => params[:statuscode],
                          :reason => params[:reason])
    if @status.save
      render(:json => @status.to_json(), :status => 201)
    end
  end

  def info
    @statusCode = params[:statuscode].to_i
  end
  
end
