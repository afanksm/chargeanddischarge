class OutletsController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    Outlet.delete(params["id"])
   
    redirect_to "/outlets"

  end

  def new
    if session["user_id"] == nil
      redirect_to "/", notice: "You need to be signed in to add new outlets."
    end
  end

  def create
   Outlet.create location: params["location"],
                numoutlets: (params["numoutlets"]).to_i,
                floor_id: params["floor_id"].to_i,
                availslots: params["availslots"]

    redirect_to "/outlets", notice: "Thanks for adding outlets!"
  end

  def edit

  end

  def update
    o = Outlet.find_by(id: params["id"])

     o.update location: params["location"],
              floor_id: params["floor_id"],
              numoutlets: params["numoutlets"],
              availslots: params["availslots"]
              
    redirect_to "/outlets"
    
  end

end
