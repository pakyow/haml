require "support/helper"

class ProcessorTest < MiniTest::Unit::TestCase
  def setup
    @view_store = :test
    Pakyow::App.stage(:test)
  end

  def test_view_is_processed
    v = Pakyow.app.presenter.store.composer('/')
    assert_equal File.read('test/support/processed.html').strip, v.container(:default).to_html.strip
  end
end
