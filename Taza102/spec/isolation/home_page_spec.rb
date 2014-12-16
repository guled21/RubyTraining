require 'spec_helper'
require 'google'


describe "HomePage" do

  google  = Google.new

  it "should pass because its not testing anything" do
    expect(true).to be_true
  end

  it "should perform google search" do
      google.search_flow(:query => "Ruby")
      sleep(3)
      results = google.search_results.split(/ \(/, 2)
      expect(results[0]).to eql("About 285,000,000 results")
  end

  it "should return the ruby-lang.org link as the first result" do
      result = google.first_search_result_div.split(/\n/)
      expect(result[1]).to eq("https://www.ruby-lang.org/")
  end

  it "should return Ruby Programming Language as the first header" do
    expect(google.first_search_result_header).to eq("Ruby Programming Language")
  end

end




