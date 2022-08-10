class RegistrationsController < ApplicationController
    def new
        @person = Person.new
    end

    def create 
        render plain: "Thanks!"
    end
end