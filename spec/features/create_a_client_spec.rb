require 'spec_helper'

feature 'see all clients' do
  scenario "I can see all the clients on my paymill account" do
    visit root_path

    clients = Paymill::Client.all

    clients.each do |client|
      expect(page).to have_text client.id
    end
  end
end
