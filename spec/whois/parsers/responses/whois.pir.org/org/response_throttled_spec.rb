# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.pir.org/org/response_throttled.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.pir.org.rb'

describe Whois::Parsers::WhoisPirOrg, "response_throttled.expected" do

  subject do
    file = fixture("responses", "whois.pir.org/org/response_throttled.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#response_throttled?" do
    it do
      expect(subject.response_throttled?).to eq(true)
    end
  end
end
