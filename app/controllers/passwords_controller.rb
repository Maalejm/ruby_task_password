class PasswordsController < ApplicationController
   
  def index
   
    password= params[:password]
    @found =false

        @passwords_entries =Password1.all();
        @passwords_entries.each do |entry|
        @hased_password= BCrypt::Engine.hash_secret(password,entry.salt)
        @pass=entry.encrypted_password
            if @hased_password == @pass
               # matching is found between the user password and the entry in the data base
               @found =true
               break # stop iterating
            end
        end
        if request.xhr?
            render :json => @found
        end
        



  end
  
end
