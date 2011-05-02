module Facebook
  module Model
    
    class FacebookModel
      include Mongoid::Document
      field :account_name
      field :account_id
      field :priority, type: Integer
      field :area_id, type: Integer
      #Check what other fields need to be added here
    end
  
  end
end