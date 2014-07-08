require 'spec_helper'

describe Pushpop::File do
  it 'should emit file contents as an array of strings' do
    step = Pushpop::File.new do
      path File.expand_path("../fixtures/file.txt", __FILE__)
    end
    result = step.run
    expect(result).to eq(["one", "two", "three"])
  end
end
