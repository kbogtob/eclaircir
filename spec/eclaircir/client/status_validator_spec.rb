require 'spec_helper'

describe Eclaircir::Client::StatusValidator do
  subject do
    described_class.new(response)
  end

  let(:response) do
    instance_double(Eclaircir::Response,
      status: main_status,
      outputs: [output])
  end

  let(:main_status) do
    instance_double(Eclaircir::Status,
      success?: main_status_success)
  end

  let(:main_status_success) do
    true
  end

  let(:output) do
    instance_double(Eclaircir::Output,
      status: output_status)
  end

  let(:output_status) do
    instance_double(Eclaircir::Status)
  end

  describe '#validate!' do
    context 'when the main status is successful' do
      it 'returns true' do
        expect(subject.validate!).to be true
      end
    end

    context 'when the main status is not successful' do
      let(:main_status_success) do
        false
      end

      context 'when an output status is failed' do
        before do
          allow(output_status)
            .to receive(:validate!)
            .and_raise(Eclaircir::APIError, 'output status error')
        end

        it 'raises the output status validation error' do
          expect do
            subject.validate!
          end.to raise_error(Eclaircir::APIError, /output status error/)
        end
      end

      context 'when all output status validate' do
        before do
          allow(output_status)
            .to receive(:validate!)
            .and_return(true)

          allow(main_status)
            .to receive(:validate!)
            .and_raise(Eclaircir::APIError, 'main status error')
        end

        it 'raises the main status validation error' do
          expect do
            subject.validate!
          end.to raise_error(Eclaircir::APIError, /main status error/)
        end
      end
    end
  end
end