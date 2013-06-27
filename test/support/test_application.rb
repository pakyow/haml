Pakyow::App.define do
  configure(:test) do
    presenter.view_stores[:test] = "test/support/views"
  end
end
