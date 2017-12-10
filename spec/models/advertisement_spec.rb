require 'rails_helper'

RSpec.describe Advertisement, type: :model do
    let(:advertisement) { Advertisement.create! }

    describe "attributes" do
        it "has title attributes" do
            expect(advertisement).to respond_to(:title)
        end

        it "has copy attributes" do
            expect(advertisement).to respond_to(:copy)
        end

        it "has price attributes" do
            expect(advertisement).to respond_to(:price)
        end

    end
end
