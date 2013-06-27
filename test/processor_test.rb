require "support/helper"

class ProcessorTest < MiniTest::Unit::TestCase
  def setup
    @view_store = :test
    Pakyow::App.stage(:test)
  end

  def test_view_is_processed
    v = View.at_path("/", @view_store)
    assert_equal "<h1>this should be a header</h1>", v.container(:main)[0].content
  end
end
