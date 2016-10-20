$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'inflecto-refinements'

RSpec.configure do |_config|
  # Helps to ensure that inflecto does not modify original input
  def i(object)
    object.freeze
  end
end
