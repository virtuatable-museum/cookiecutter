# frozen_string_literal: true

RSpec.describe Controllers::{{ cookiecutter.glued }} do
  def app
    Controllers::{{ cookiecutter.glued }}
  end

  let!(:account) { create(:account) }
  let!(:session) { create(:session, account: account) }
  let!(:application) { create(:application, creator: account) }
end
