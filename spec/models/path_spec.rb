require 'rails_helper'

RSpec.describe Path, type: :model do
  describe "search indexing" do
    let!(:path) do
      create(:path, title: "New Title Should Find", description: "Elastic search testing")
    end
    it "does not trigger a sidekiq worker when a non sync attributes are updated" do
      expect(described_class).not_to receive(:trigger_algolia_worker)
      path.update!(archive_number: 500)
    end
  end
end
