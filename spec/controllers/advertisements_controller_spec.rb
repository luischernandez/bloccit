require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do
    let (:some_ad) do
        Advertisement.create(
        id: 1,
        title: "Test title",
        copy: "Some random copy text",
        price: 100
        )
    end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: some_ad.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "create @advertisements" do
      get :new
      expect(response).not_to be_nil
end
  end

  describe "Ad create" do
      it "increases the number of ads by 1" do
          expect{ post :create, params: {advertisements: {title: "Test title", copy: "Some random copy text", price: 100}}}.to change(Advertisement,:count).by(1)
      end

      it "assigns the new advertisement to @advertisements" do
        post :create, params: {advertisements: {title: "Test title", copy: "Some random copy text", price: 100}}
        expect(assigns(:advertisements)).to eq Advertisement.last
      end

      it "redirects to the new ad" do
          post :create, params: {advertisements: {title: "Test title", copy: "Some random copy text", price: 100}}
          expect(response).to redirect_to Advertisement.last
      end
  end

end
