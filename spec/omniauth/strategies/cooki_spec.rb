require 'spec_helper'
require 'omniauth-cooki'

describe OmniAuth::Strategies::cooki do
  subject do
    OmniAuth::Strategies::cooki.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct site' do
      subject.client.site.should eq("https://red.coo.ki")
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq("/oauth2/authorize")
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/oauth2/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/cooki/callback')
    end
  end
end
