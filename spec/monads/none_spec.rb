RSpec.describe Monads::None do

  describe '.()' do

    context 'given an object instance' do
      it 'should raise ArgumentError' do
        expect { described_class.(Object.new) }.to raise_exception(ArgumentError)
      end
    end

    context 'given no value' do
      subject { described_class.() }
      it { is_expected.to be_an_instance_of(described_class) }
    end

  end

end
