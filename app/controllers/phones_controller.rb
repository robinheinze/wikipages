class PhonesController < ApplicationController
  def new
    contact = Contact.find(params[:contact_id])
    @phone = contact.phones.new
    render('phones/new.html.erb')
  end

  def create
    @phone = Phone.new(:number => params[:number].to_i,
                       :contact_id => params[:contact_id].to_i)
    if @phone.save
      render('phones/success.html.erb')
    else
      render('phones/new.html.erb')
    end
  end

  def edit
    @phone = Phone.find(params[:id])
    @contact = Contact.find(@phone.contact_id)
    render('phones/edit.html.erb')
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update(:number => params[:number])
      render('phones/success.html.erb')
    else
      @contact = Contact.find(@phone.contact_id)
      render('phones/edit.html.erb')
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @contact = Contact.find(@phone.contact.id)
    @phone.destroy
    render('phones/destroy.html.erb')
  end
end
