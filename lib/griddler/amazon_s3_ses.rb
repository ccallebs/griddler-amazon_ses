require 'aws/sns_message'
require 'griddler'
require 'griddler/amazon_s3_ses/version'
require 'griddler/amazon_s3_ses/adapter'
require 'griddler/amazon_s3_ses/middleware'
require 'griddler/amazon_s3_ses/railtie'
require 'griddler/amazon_s3_ses/configuration'

module Griddler
  module AmazonS3SES
  end
end

Griddler.adapter_registry.register(:amazon_s3_ses, Griddler::AmazonS3SES::Adapter)
