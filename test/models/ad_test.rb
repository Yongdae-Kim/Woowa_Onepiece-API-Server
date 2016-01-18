require 'test_helper'

class AdTest < ActiveSupport::TestCase
  test '.category' do
    assert_equal Ad.all, Ad.type(nil)
    assert_equal Ad.all, Ad.type('')
    assert_equal Ad.all, Ad.type('   ')
    assert Ad.type('1').all? { |ad| ad.ad_cd_id == 1 }
  end
end
