# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.uniregistry.net/tattoo/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.uniregistry.net.rb'

describe Whois::Parsers::WhoisUniregistryNet, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.uniregistry.net/tattoo/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("nic.tattoo")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("DO_4810ec9890fdf872f2e23b58df485dc4-ISC")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
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
      expect(subject.created_on).to eq(Time.parse("2013-09-16 14:21:26 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2013-11-09 02:51:24 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2023-09-16 14:21:26 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("9999")
      expect(subject.registrar.name).to eq("Uniregistry, Corp.")
      expect(subject.registrar.organization).to eq("Uniregistry, Corp.")
      expect(subject.registrar.url).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("uniregistry")
      expect(subject.registrant_contacts[0].name).to eq("Uniregistry Registry Internal Resources")
      expect(subject.registrant_contacts[0].organization).to eq("Uniregistry, Corp")
      expect(subject.registrant_contacts[0].address).to eq("PO Box 1361")
      expect(subject.registrant_contacts[0].city).to eq("Grand Cayman")
      expect(subject.registrant_contacts[0].zip).to eq("KY1-1108")
      expect(subject.registrant_contacts[0].state).to eq("George Town")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("KY")
      expect(subject.registrant_contacts[0].phone).to eq("+1.3457496263")
      expect(subject.registrant_contacts[0].fax).to eq("+1.3457496263")
      expect(subject.registrant_contacts[0].email).to eq("info+whois@uniregistry.com")
      expect(subject.registrant_contacts[0].created_on).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("tattoo-admin")
      expect(subject.admin_contacts[0].name).to eq("Uniregistry admin contact")
      expect(subject.admin_contacts[0].organization).to eq("Uniregistry, Corp")
      expect(subject.admin_contacts[0].address).to eq("PO Box 1361")
      expect(subject.admin_contacts[0].city).to eq("Grand Cayman")
      expect(subject.admin_contacts[0].zip).to eq("KY1-1108")
      expect(subject.admin_contacts[0].state).to eq("George Town")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("KY")
      expect(subject.admin_contacts[0].phone).to eq("+1.3457496263")
      expect(subject.admin_contacts[0].fax).to eq("+1.3457496263")
      expect(subject.admin_contacts[0].email).to eq("admin@nic.tattoo")
      expect(subject.admin_contacts[0].created_on).to eq(nil)
      expect(subject.admin_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("tattoo-tech")
      expect(subject.technical_contacts[0].name).to eq("Uniregistry tech contact")
      expect(subject.technical_contacts[0].organization).to eq("Uniregistry, Corp")
      expect(subject.technical_contacts[0].address).to eq("PO Box 1361")
      expect(subject.technical_contacts[0].city).to eq("Grand Cayman")
      expect(subject.technical_contacts[0].zip).to eq("KY1-1108")
      expect(subject.technical_contacts[0].state).to eq("George Town")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("KY")
      expect(subject.technical_contacts[0].phone).to eq("+1.3457496263")
      expect(subject.technical_contacts[0].fax).to eq("+1.3457496263")
      expect(subject.technical_contacts[0].email).to eq("tech@nic.tattoo")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(4)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("a.ns.uniregistry.net")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("tld.isc-sns.info")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("tld.isc-sns.com")
      expect(subject.nameservers[2].ipv4).to eq(nil)
      expect(subject.nameservers[2].ipv6).to eq(nil)
      expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[3].name).to eq("tld.isc-sns.net")
      expect(subject.nameservers[3].ipv4).to eq(nil)
      expect(subject.nameservers[3].ipv6).to eq(nil)
    end
  end
end
