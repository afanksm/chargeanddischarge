class BathroomsController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    Bathroom.delete(params["id"])
   
    redirect_to "/bathrooms"

  end

  def new
    if session["user_id"] == nil
      redirect_to "/", notice: "You need to be signed in to add new bathrooms."
    end
  end

  def create
     Bathroom.create location: params["location"],
                gender: params["gender"],
                floor_id: params["floor_id"].to_i,
                numstalls: (params["numstalls"]).to_i,
                availstalls: params["availstalls"].to_i,
                numurinals: (params["numurinals"]).to_i,
                availurinals: (params["numurinals"]).to_i
                
    redirect_to "/bathrooms", notice: "Thanks for adding bathroom!"
  end

  def edit

  end

  def update
    b = Bathroom.find_by(id: params["id"])

     b.update location: params["location"],
              gender: params["gender"],
              floor_id: params["floor_id"],
              numstalls: params["numstalls"],
              availstalls: params["availstalls"],
              numurinals: params["numurinals"],
              availurinals: params["availurinals"]
              
    redirect_to "/bathrooms"

  end

end
