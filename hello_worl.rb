

#####Background Job to handle making http call's to the scanner for generating data required.
require 'openssl'
require 'uri'
require 'net/http'
require 'open-uri'
require 'redlock'

class JsScanRequestJob < ActiveJob::Base

  include SuckerPunch::Job
  workers 2000

  def perform

    begin

      Net::HTTP.get(URI.parse(request_url))

    rescue => e
    end

  end

end

