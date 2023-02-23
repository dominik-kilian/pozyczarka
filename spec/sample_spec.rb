def full_name(first_name, last_name)
  "#{first_name} #{last_name}"
end

describe 'view full name' do
  it 'full name' do
    expect(full_name('Dominik','Marczyk')).to eq 'Dominik Marczyk'
  end
end

describe 'return full name' do
  it 'good returned' do
    expect(full_name('Tomasz', 'Kania')).to eq 'Tomasz Kania'
  end
end