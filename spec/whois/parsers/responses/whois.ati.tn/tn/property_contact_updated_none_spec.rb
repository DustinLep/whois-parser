# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ati.tn/tn/property_contact_updated_none.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.ati.tn.rb'

describe Whois::Parsers::WhoisAtiTn, "property_contact_updated_none.expected" do

  subject do
    file = fixture("responses", "whois.ati.tn/tn/property_contact_updated_none.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("MAISON DE BIEN HOTELIERS ET EQ Farhat Riadh")
      expect(subject.registrant_contacts[0].created_on).to eq(Time.parse("2013-12-13 20:00:57"))
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
end
