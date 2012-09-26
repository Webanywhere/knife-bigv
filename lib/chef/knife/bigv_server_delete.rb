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
    class BigvServerDelete < Knife
      banner "knife bigv server delete -N HOSTNAME"

      option :server_name,
             :short => "-N NAME",
             :long => "--server-name NAME",
             :description => "The name of the VM you wish to create."

      def run
        unless config[:server_name]
          ui.error("You have not provided an image value")
          exit 1
        end

        system("bigv vm delete -b --vm-name #{config[:server_name]}")
      end
    end
  end
end