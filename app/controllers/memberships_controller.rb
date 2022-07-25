class MembershipsController < ApplicationController
    def create 
        member = Membership.create!(membership_params)
        render json: member, status: :created
    end

    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end
end