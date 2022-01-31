require_relative './test_db_data/sample'

load 'lib/explain_to_markdown_table/active_record/explain_to_markdown_table.rb'

describe "test" do
  it do
    binding.irb
    expect("a").to eq "b"
  end
end
