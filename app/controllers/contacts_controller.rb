class ContactsController < ApplicationController
  def new
    if(params[:contact])
      @contact=Contact.new(contact_params)
    else
      @contact=Contact.new
    end
  end

  def confirmation
    @contact=Contact.new(contact_params)
    unless @contact.valid?
      render :new
    end
  end

  def create
    Contact.create(contact_params)
  end

  private
  def contact_params
    params.require(:contact).permit(:name,:email,:title,:content)
  end
end
