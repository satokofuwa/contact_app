class ContactsController < ApplicationController

    def new
      @contact=Contact

    end

    def create 
      @contct=Contact(contact_params)
      if @contact.save
        redirect new_contact_app_path,notice:"保存できました"
      else
        render :new
      end
    end
    
    private
    
    def contact_params
        params.require(:contact).permit(:name, :email, :content)
    end
end
