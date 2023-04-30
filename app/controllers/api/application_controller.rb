module Api 
    class ApplicationController <ActionController::API
        before_action :doorkeeper_authorize!
        private 

        def current_user
            @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id])
        end 
    
        def current_agent
            @current_agent ||= Agent.find_by(id: doorkeeper_token[:resource_owner_id])
        end 
    
    
    
    end
end