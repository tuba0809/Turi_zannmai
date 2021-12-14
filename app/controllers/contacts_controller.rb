class ContactsController < ApplicationController

  def new
    #メール内容を作成
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      #メールを送信
      ContactMailer.contact_mail(@contact).deliver
      redirect_to new_contact_path
    else
      #リダイレクト
      redirect_to new_cntact_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :message)
  end

end
