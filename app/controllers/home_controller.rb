class HomeController < ApplicationController
  IMAGES_PATH = File.join(Rails.root, "public", "images")
  def index

  end

  def main_page
  	
  end

  def lobby
  	
  end
  def rooftop
  	
  end
  def living_room
  	
  end
  def penthouse
  	
  end
  def fact_sheet
  	
  end
  def team
  	
  end

  def kitchen
    
  end
  def bathroom
    
  end
  def nolita
    
  end
  def map
    
  end
  def availability
    
  end
  def press
    
  end

  def legal
    
  end

  def download
    send_file(File.join(IMAGES_PATH, "nypost.jpg"))
    # respond_to do |format|
    #   format.js
    # end
  end

end
