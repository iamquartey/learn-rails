require 'test_helper'

describe Contact do

  let(:contact_params) { {name: 'User Test', email: 'user@example.com', content: 'Here is some fake content for testing.'} }
  let(:contact) { Contact.new contact_params }

  it 'is valid when created with valid parameters' do
    contact.must_be :valid?
  end

  it 'is invalid without a name' do
    contact_params.delete :name
    contact.wont_be :valid?
    contact.errors[:name].must_be :present?
  end

  it 'is invalid without an email' do
    contact_params.delete :email
    contact.wont_be :valid?
    contact.errors[:email].must_be :present?
  end

  it 'is invalid without any content' do
    contact_params.delete :content
    contact.wont_be :valid?
    contact.errors[:content].must_be :present?
  end

end
