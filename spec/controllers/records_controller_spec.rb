require 'rails_helper'

RSpec.describe RecordsController, type: :controller do
    let!(:record) { Record.create!(comment: 'A Comment.', location: 'Some Location.')}
    let(:valid_params) { { record: { comment: 'A Comment.', location: 'A different Location.' }} }

    describe '#index' do
        it 'returns all records as json' do
            get :index
            expect(JSON.parse(response.body)).to eq(Record.all.as_json)
        end
    end

    describe '#create' do
        it 'creates a record' do
            post :create, params: valid_params
            expect(JSON.parse(response.body)).to eq(Record.second.as_json)
        end
    end
end
