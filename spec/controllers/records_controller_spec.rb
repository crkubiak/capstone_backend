require 'rails_helper'

RSpec.describe RecordsController, type: :controller do
    let!(:valid_params) { { record: { comment: 'A Comment.', location: 'A different Location.' }} }

    context '#index' do
        let!(:record) { Record.create!(comment: 'A Comment.', location: 'Some Location.')}
        describe 'response' do 
            it 'returns all records as json' do
                get :index
                expect(JSON.parse(response.body)).to eq(Record.all.as_json)
            end
        end
    end

    describe '#create' do
        it 'creates a record' do
            post :create, params: valid_params
            expect(JSON.parse(response.body)).to eq(Record.first.as_json)
        end
        it 'creates a record w/ images' do
            attachments = [
                fixture_file_upload(Rails.root.join(fixture_path, 'c0.jpeg')),
                fixture_file_upload(Rails.root.join(fixture_path, 'c1.jpeg')),
                fixture_file_upload(Rails.root.join(fixture_path, 'c2.jpeg'))

            ]
            params_with_attachment = { 
                record: { 
                    comment: 'a comment', 
                    location: 'cat heaven', 
                    images: attachments
                } 
            }
            expect { 
                post :create, params: params_with_attachment
            }.to change(ActiveStorage::Attachment, :count).by(3)
        end
    end
end
