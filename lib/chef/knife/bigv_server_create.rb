#
# Author:: Alice Kaerast (<alice.kaerast@webanywhere.co.uk>)
# Copyright:: Copyright (c) 2012 Webanywhere
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'highline'
require 'net/ssh/multi'
require 'readline'
require 'chef/knife'
require 'chef/json_compat'

class Chef
  class Knife
    class BigvServerCreate < Knife
      banner "knife bigv server create [RUN LIST...] (options)"

      option :server_name,
             :short => "-N NAME",
             :long => "--server-name NAME",
             :description => "The name of the VM you wish to create."

      option :cores,
             :short => "-C CORES",
             :long => "--server-cores",
             :description => "The number of CPU cores that you want for your VM.",
             :default => 1

      option :memory,
             :short => "-M MEMORY",
             :long => "--server-memory",
             :description => "The memory that you want for your VM, in GiB.",
             :default => 1

      option :discs,
             :long => "--server-discs",
             :description => "Your comma-separated list of disc specifications.",
             :default => 25

      option :flavor,
             :short => "-f FLAVOR",
             :long => "--flavor FLAVOR",
             :description => "The operating system to install on the virtual machine.",
             :default => "centos-6.2"

      def h
        @highline ||= HighLine.new
      end

      def run
        $stdout.sync = true
        system("bigv vm new --batch --vm-name #{config[:server_name]} --vm-cores #{config[:cores]} --vm-memory #{config[:memory]} --vm-discs #{config[:discs]} --vm-distribution #{config[:flavor]}")
        puts "\nServer ready!!!"

      end

    end
  end
end
