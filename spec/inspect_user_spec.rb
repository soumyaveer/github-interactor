require './lib/inspect_user.rb'

RSpec.describe InspectUser, '#call' do
  subject do
    described_class.call(username: username)
  end

  context 'for valid username', vcr: true do
    let(:username) { 'soumyaveer' }
    let(:user_details) { subject.user_details }
     specify do
       expect(user_details).to include(:followers)
       expect(subject.user_details[:followers]).to_not be_empty
       expect(subject.user_details).to include(:repos)
       expect(subject.user_details[:repos]).to_not be_empty
    end
  end

  context 'for invalid username', vcr: true do
    let(:username) { 'invalid' }

   specify do
      expect(subject.user_details[:followers]).to be_empty
      expect(subject.user_details[:repos]).to be_empty
    end
  end
end

