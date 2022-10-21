describe 'Craft' do
  it 'rejects xx from entering the venue' do
    c = Craft.new
    crafted = c.craft('xx')
    expect(crafted).to be_truthy
  end
end