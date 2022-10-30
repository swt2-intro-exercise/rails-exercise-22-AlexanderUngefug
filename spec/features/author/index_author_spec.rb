require 'rails_helper'

 describe "Index author page", type: :feature do
   
  it "Author index page should list name and homepage of all authors" do    
    visit authors_path
    expect(page).to have_text('All')    
  end

  it "Link to new author" do    
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path 
  end
  

 end
