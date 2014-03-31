class EmailsController < ApplicationController
  def new
    @contact = Contact.find(params[:contact_id])
    @email = contact.emails.new
    render('emails/new.html.erb')
  end

  def create
    @email = Email.new(:email_address => params[:email_address],
                       :contact_id => params[:contact_id].to_i)
    if @email.save
      render('emails/success.html.erb')
    else
      render('emails/new.html.erb')
    end
  end

  def update
    @email = Email.find(params[:id])
    if @email.update(:email_address => params[:email_address])
      render('emails/success.html.erb')
    else
      @contact = Contact.find(@email.contact_id)
      render('emails/edit.html.erb')
    end

  end

  def edit
    @email = Email.find(params[:id])
    @contact = Contact.find(@email.contact_id)
    render('emails/edit.html.erb')
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    render('emails/destroy.html.erb')
  end
end
