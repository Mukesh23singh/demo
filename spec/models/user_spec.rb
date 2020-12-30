# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'User creation' do # (almost) plain English
    it 'it should not save user if email is not valid ' do #
      user = User.new(email: '12344')
      expect(user.save).to be_falsey # test code
    end
  end
end
