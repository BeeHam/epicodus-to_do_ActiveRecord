require('capybara/rspec')
require('./app')
require('spec_helper')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new list', {:type => :feature}) do
  it('allows a user to click a list to see the task and details for it') do
    visit('/')
    click_link('Add New List')
    fill_in('name', :with => 'Epicodus Work')
    click_button('Add List')
    expect(page).to have_content('Your list has been added!!!')
  end
end

describe('viewing all of the lists', {:type => :feature}) do
  it('allows a user to sell all of the lists that have been created') do
  list = List.new({:name => 'Epicodus Homework', :id => nil})
  list.save()
  visit('/')
  click_link('View All Lists')
  expect(page).to have_content(list.name)
  end
end
