require 'spec_helper'

describe Administrator do
  describe '.new' do
    it 'creates an instance of Administrator' do
      subscriber = Administrator.new
      expect(subscriber).to be_an_instance_of(Administrator)
    end
    it 'has a user' do

    end
  end

  describe '#user' do
    it 'has a user' do
      subscriber = Administrator.new
      user = User.new
      administrator.user = user
      expect(administrator.user).to be_an_instance_of(User)
    end
  end

  describe '.create' do
    it 'has an id' do
      administrator = Administrator.create(username: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(administrator.id).to_not be nil
    end
  end

  describe '#metadata' do
    it 'has administrator properties' do
      administrator = Administrator.create(role: 'db', ssn: '111-22-3333', tel: '1-111-222-3333')
      expect(administrator.id).to_not be nil
      expect(administrator.role).to eq 'db'
      expect(administrator.ssn).to eq '111-22-3333'
      expect(administrator.id).to eq '1-111-222-3333'
    end
  end
end
