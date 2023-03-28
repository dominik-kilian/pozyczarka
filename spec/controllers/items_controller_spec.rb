describe ItemsController, type: :controller do

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #show' do
    let(:item) { create(:item)  }
    it 'returns http success' do
      get :show, params: { id: item.id}
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #edit' do
    let(:item) { create(:item) }

    it 'returns http success' do
      get :edit, params: { id: item.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST #create' do
    let(:item) { build(:item) }

    it 'returns http redirect' do
      post :create, params: { item: item.attributes }
      expect(response).to have_http_status(:found)
    end
  end

  describe 'PUT #update' do
    let(:item) { create(:item) }
    let(:new_attributes) { attributes_for(:item) }

    it 'return http redirect' do
      put :update, params: { id: item.id, item: new_attributes}
      expect(response).to have_http_status(:found)
    end
  end

  describe 'DELETE #destroy' do
    let(:item) { create(:item) }
    it 'returns http redirect' do
      delete :destroy, params: { id: item.id }
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET #active' do
    it 'returns http success' do
      get :active
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #not_active' do
    it 'returns http success' do
      get :not_active
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #borrowed' do
    it 'returns http success' do
      get :borrowed
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'GET #not_borrowed' do
    it 'returns http success' do
      get :not_borrowed
      expect(response).to have_http_status(:ok)
    end
  end
end