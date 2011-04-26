require "rubygems"
require "facebook/model"

module Facebook
  class << self
  
    ##
    # Returns the facebook config for a given area
    ##
      def getFacebook (area)
        if(area.is_a? Numeric)
          return Facebook::Model::FacebookModel.where(area_id: area)
        else
          return nil
        end
      end

    ##
    # Returns all the facebook configurations stored in the database
    ##
      def getAll
        return Facebook::Model::FacebookModel.all.entries
      end
  
  end
end
