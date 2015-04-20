require 'rails_helper'

RSpec.describe "Filiais", :type => :request do
  describe "GET /filiais" do
    it "works! (now write some real specs)" do
      get filiais_path
      expect(response).to have_http_status(200)
    end
  end
end
