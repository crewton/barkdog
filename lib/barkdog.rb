require 'dogapi'
require 'logger'
require 'singleton'
require 'term/ansicolor'

module Barkdog; end

require 'barkdog/ext/string_ext'
require 'barkdog/constants'
require 'barkdog/logger'
require 'barkdog/client'
require 'barkdog/driver'
require 'barkdog/dsl'
require 'barkdog/dsl/context'
require 'barkdog/dsl/context/monitor'
require 'barkdog/dsl/context/monitor/options'
require 'barkdog/dsl/converter'
require 'barkdog/exporter'
require 'barkdog/version'