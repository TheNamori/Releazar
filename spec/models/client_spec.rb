require 'rails_helper'

RSpec.describe Client, type: :model do
  it 'should be able to create a client' do
    client = create(:client)
    expect(client.name).to eq('Matheus')
    expect(client.city).to eq('Osasco')
    expect(client.neighborhood).to eq('Km 18')
    expect(client.address).to eq('Rua Gasparino Lunardi, 252')
    expect(client.deliverer_fee).to eq(3)
    expect(client.phone).to eq('984160601')
    expect(client.blocked).to eq(false)
    # hi
  end
end
