require 'rails_helper'

RSpec.describe "As a user," do 
    describe "when I visit an article show page" do
        it "I see a link to delete the article and, after clicking, redirects to index." do 
            article_1 = Article.create!(title: "Title 1", body: "Body 1")
            article_2 = Article.create!(title: "Title 2", body: "Body 2")

            visit "/articles/#{article_1.id}"
            click_link "Delete"
            expect(current_path).to eq(articles_path)
            expect(page).to have_content(article_2.title)
            expect(page).to_not have_content(article_1.title)
        end 
    end 
end 