require './lib/book'
require './lib/author'

RSpec.describe Author do
    before(:each) do
        @charlotte_bronte = Author.new({ first_name: "Charlotte", 
                                         last_name: "Bronte" })
    end

    it 'exists' do 
        expect(@charlotte_bronte).to be_an Author
    end

    it 'has attributes' do
        expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
        expect(@charlotte_bronte.books).to eq []
    end
    require 'pry'; binding.pry
end
