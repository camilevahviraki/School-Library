require_relative '../book'

describe Book do
  context 'When testing the Book class' do
    it 'should show a book object is an instance of book class' do
      bk = Book.new('Percy Jackson', 'Rick Riordan')
      expect(bk).to be_instance_of Book
    end
  end
end
