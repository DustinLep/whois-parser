# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.co/co/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.co.rb'

describe Whois::Parsers::WhoisNicCo, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.co/co/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("t.co")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("D740225-CO")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["clientTransferProhibited"])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2010-04-26 07:50:40 GMT"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2013-10-14 13:03:24 GMT"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2016-04-25 23:59:59 GMT"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("299")
      expect(subject.registrar.name).to eq("CSC CORPORATE DOMAINS")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("365684910586C791")
      expect(subject.registrant_contacts[0].name).to eq("Twitter, Inc.")
      expect(subject.registrant_contacts[0].organization).to eq("Twitter, Inc.")
      expect(subject.registrant_contacts[0].address).to eq("1355 Market Street\nSuite 900")
      expect(subject.registrant_contacts[0].city).to eq("San Francisco")
      expect(subject.registrant_contacts[0].zip).to eq("94103")
      expect(subject.registrant_contacts[0].state).to eq("CA")
      expect(subject.registrant_contacts[0].country).to eq("United States")
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("+1.4152229670")
      expect(subject.registrant_contacts[0].fax).to eq("+1.4152220922")
      expect(subject.registrant_contacts[0].email).to eq("domains@twitter.com")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("868543810568A633")
      expect(subject.admin_contacts[0].name).to eq("Domain Admin")
      expect(subject.admin_contacts[0].organization).to eq("Twitter, Inc.")
      expect(subject.admin_contacts[0].address).to eq("1355 Market Street\nSuite 900")
      expect(subject.admin_contacts[0].city).to eq("San Francisco")
      expect(subject.admin_contacts[0].zip).to eq("94103")
      expect(subject.admin_contacts[0].state).to eq("California")
      expect(subject.admin_contacts[0].country).to eq("United States")
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.4152229670")
      expect(subject.admin_contacts[0].fax).to eq("+1.4152220922")
      expect(subject.admin_contacts[0].email).to eq("domains@twitter.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("42101611057C7478")
      expect(subject.technical_contacts[0].name).to eq("Tech Admin")
      expect(subject.technical_contacts[0].organization).to eq("Twitter, Inc.")
      expect(subject.technical_contacts[0].address).to eq("1355 Market Street\nSuite 900")
      expect(subject.technical_contacts[0].city).to eq("San Francisco")
      expect(subject.technical_contacts[0].zip).to eq("94103")
      expect(subject.technical_contacts[0].state).to eq("California")
      expect(subject.technical_contacts[0].country).to eq("United States")
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.4152229670")
      expect(subject.technical_contacts[0].fax).to eq("+1.4152220922")
      expect(subject.technical_contacts[0].email).to eq("domains-tech@twitter.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(4)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.p34.dynect.net")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.p34.dynect.net")
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.p34.dynect.net")
      expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.p34.dynect.net")
    end
  end
end
