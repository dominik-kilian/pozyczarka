describe 'example database' do
  it 'create item' do
    item = Item.create(name: 'Book')
    expect(Item.count).to eq 1
  end

  it 'create active item' do
    item = Item.create(name: 'Mouse', active: true)
    expect(Item.count).to eq 1
    expect(item.active).to eq item.active = true
    expect(item.name).to eq 'Mouse'
  end
end