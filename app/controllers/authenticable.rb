module Authenticable
  extend ActiveSupport::Concern 

  included do 
    include DeviseTokenAuth::Concern::SetUserByToken 
    before_action :authenticate_user!
  end
end