
RSpec.describe do

  describe '#Some' do
    let(:instance) { Object.new }

    it 'should pass values to Monads::Some' do
      expect(Monads::Some).to receive(:call).with(instance)
      expect { Some(instance) }.not_to raise_exception
    end
  end

  describe '#None' do
    it 'should call Monads::None, but pass no values' do
      expect(Monads::None).to receive(:call).with(no_args)
      expect { None() }.not_to raise_exception
    end
  end

  describe 'predicate method' do
    let(:other) { Object.new }
    let(:none)  { Monads::None.() }
    let(:some)  { Monads::Some.(other) }

    describe '#None?' do
      context 'given a none' do
        subject { None?(none) }
        it { is_expected.to be true }
      end

      context 'given a some' do
        subject { None?(some) }
        it { is_expected.to be false }
      end

      context 'given an object' do
        subject { None?(other) }
        it { is_expected.to be false }
      end
    end

    describe '#Some?' do
      context 'given a none' do
        subject { Some?(none) }
        it { is_expected.to be false }
      end

      context 'given a some' do
        subject { Some?(some) }
        it { is_expected.to be true }
      end

      context 'given an object' do
        subject { Some?(other) }
        it { is_expected.to be false }
      end
    end

    describe '#Option?' do
      context 'given a none' do
        subject { Option?(none) }
        it { is_expected.to be true }
      end

      context 'given a some' do
        subject { Option?(some) }
        it { is_expected.to be true }
      end

      context 'given an object' do
        subject { Option?(other) }
        it { is_expected.to be false }
      end
    end
  end

end
