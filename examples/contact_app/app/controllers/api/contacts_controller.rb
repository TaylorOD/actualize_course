class Api::ContactsController < ApplicationController
  def contact
    @contact = Contact.first
    render "one_contact.json.jb"
  end

  def all_contact
    @all_contact = Contact.all
    render "all_contact.json.jb"
  end
end
