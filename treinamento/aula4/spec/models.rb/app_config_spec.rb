require 'spec_helper'

RSpec.describe AppConfig do
  describe '.url' do
    it 'retunrs the url' do
      expect(AppConfig.url).to eq('http://emailmarketing.systemintegration.locaweb.com.br')
    end
  end
end
