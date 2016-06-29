require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word replacer', {:type => :feature}) do
  it('takes user input to replace a word in a string with another word') do
    visit('/')
    fill_in('string_input', :with => 'Hello world')
    fill_in('target', :with => 'world')
    fill_in('replacement', :with => 'universe')
    click_button('Send')
    expect(page).to have_content('Hello universe')
  end
end
