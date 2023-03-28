describe Item do
  it 'create item with name' do
    item = Item.create(name: 'Dominik')
    expect(item.name).to eq 'Dominik'
  end

  context 'when name not passed' do
    it 'does not create item' do
    item = Item.create(name: '')
    expect(Item.count).to eq 0
    end
    it 'not valid' do
      item = Item.create(name: 'aa')
      expect(item.valid?).to eq false
    end
  end

end