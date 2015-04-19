RSpec.describe Monads::Some do

  describe '.()' do

    context 'given an object instance' do
      subject { described_class.(Object.new) }
      it { is_expected.to be_an_instance_of(described_class) }
    end

    context 'given a true value' do
      subject { described_class.(true) }
      it { is_expected.to be_an_instance_of(described_class) }
    end

    context 'given a false value' do
      subject { described_class.(false) }
      it { is_expected.to be_an_instance_of(described_class) }
    end

    context 'given a nil value' do
      subject { described_class.(nil) }
      it { is_expected.to be_an_instance_of(described_class) }
    end

    context 'given no value' do
      it 'should raise ArgumentError' do
        expect { described_class.() }.to raise_exception(ArgumentError)
      end
    end

  end

end
