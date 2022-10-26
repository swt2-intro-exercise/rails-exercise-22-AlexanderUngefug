require 'rails_helper'

 describe "New author page", type: :feature do
   it "should exist at 'new_author_path' and render withour error" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
         visit new_author_path
   end

   it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_author_path
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "Author should have first name, last name, and homepage" do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
  end

  it "Author #name should return the full name" do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name + " " + author.last_name).to eq('Alan Turing')
  end

  it "New author page should save the author" do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    visit new_author_path
    page.fill_in 'author[first_name]', with: author.first_name
    page.fill_in 'author[last_name]', with: author.last_name
    page.fill_in 'author[homepage]', with: author.homepage
    find('input[type="submit"]').click
  end

 end
