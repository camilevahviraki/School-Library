require_relative '../classroom'

describe Classroom do
  context 'When testing the Classroom class' do
    it 'should show a classroom object is an instance of Classroom class' do
      cr = Classroom.new('1Q')
      expect(cr).to be_instance_of Classroom
    end
  end
end
