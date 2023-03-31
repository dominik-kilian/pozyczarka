describe 'Navbar' do
  before do
    visit '/'
  end

  it 'has link to all items' do
    expect(page).to have_link{'All'}
  end

  it 'has link to active items' do
    expect(page).to have_link{'Active'}
  end

  it 'has link to not active items' do
    expect(page).to have_link{'Not Active'}
  end

  it 'has link to borrowed items' do
    expect(page).to have_link{'Borrowed'}
  end

  it 'has link to not borrowed items' do
    expect(page).to have_link{'Not Borrowed'}
  end
end