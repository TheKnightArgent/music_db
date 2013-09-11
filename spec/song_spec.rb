require 'rspec'

describe 'Song' do
  describe 'to_s' do
    it 'outputs data as a string' do
      expect(subject).to be_a(string)

    end
  end

end