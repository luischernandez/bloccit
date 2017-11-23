require 'rails_helper'

RSpec.describe Question, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: false)}

  describe "attributes" do
      it "has a title and body attributes" do
          expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: false)
      end
  end
end
