describe 'Item routes', type: :routing do
  it { expect(get: '/items').to route_to('items#index') }
  it { expect(get: '/items/1').to route_to('items#show', id: '1') }
  it { expect(post: '/items').to route_to('items#create') }
  it { expect(put: '/items/1').to route_to('items#update', id: '1') }
  it { expect(delete: '/items/1').to route_to('items#destroy', id: '1') }
  it { expect(get: '/items/active').to route_to('items#active') }
  it { expect(get: '/items/not_active').to route_to('items#not_active') }
  it { expect(get: '/items/borrowed').to route_to('items#borrowed') }
  it { expect(get: '/items/not_borrowed').to route_to('items#not_borrowed') }
end