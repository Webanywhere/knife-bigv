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
    class BigvFlavorList < Knife

      banner "knife bigv flavor list"

      def run
        puts "centos-5.8\n"
        puts "centos-6.2\n"
        puts "lucid\n"
        puts "maverick\n"
        puts "natty\n"
        puts "oneiric\n"
        puts "squeeze\n"
        puts "symbiosis\n"
        puts "winweb2k8r2\n"
        puts "none"
      end
    end
  end
end