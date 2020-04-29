class Api::V1::MembersController < ApplicationController
   
    def index
        @members = Member.all

        render json: @members
    end

    def create
        @members = Member.create(member_params)
        render json: @members
    end

    def show
        @member = Member.find(params[:id])
        render json: @member
    end

    def update
        @member = Member.find(params[:id])
        @member.update(member_params)
    end

    def destroy 
        @member = Member.find(params[:id])
        @member.destroy
    end

    private

    def member_params 
        params.require(:member).permit!
    end
end
 # def index
    #     respond_with Member.all
    #   end
    
    #   def create
    #     respond_with :api, :v1, Member.create(member_params)
    #   end
    
    #   def destroy
    #     respond_with Member.destroy(params[:id])
    #   end
    
    #   def update
    #     @member = Member.find(params["id"])
    #     @member.update_attributes(member_params)
    #     respond_with @member, json: @member
    #   end