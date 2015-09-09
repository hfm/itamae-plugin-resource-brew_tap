require 'test_helper'

class TestItamaePluginResourceTap < Test::Unit::TestCase
  def test_version
    assert_not_nil Itamae::Plugin::Resource::Tap::VERSION
  end
end
