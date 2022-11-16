 require 'rails_helper'

  describe "Show author page", type: :feature do
  
   it "Author page should display author details" do
    @alan = FactoryBot.create :author
     visit author_path(@alan)
     expect(page).to have_text('Alan')
   end

  end
