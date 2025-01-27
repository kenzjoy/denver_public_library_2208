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

    describe '#write' do
        it 'returns an instance of book and adds books to the book empty book array' do 
            @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

            expect(@jane_eyre).to be_a Book
            expect(@jane_eyre.title).to eq("Jane Eyre")

            @villette = @charlotte_bronte.write("Villette", "1853")

            expect(@charlotte_bronte.books).to eq [@jane_eyre, @villette]
        end
    end


end
