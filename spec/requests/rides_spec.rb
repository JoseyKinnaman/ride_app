require 'rails_helper'


RSpec.describe "/drivers/:id/rides", type: :request do

  let!(:rides) { FactoryBot.create_list(:ride, 20)}

  before { get '/drivers/1/rides'}

  it 'returns 5 rides for a driver' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
