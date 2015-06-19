#
# Cookbook Name:: sainsburys-base
# Recipe:: _apps
#
# Copyright 2015, J Sainsbury, Plc.
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

node['sainsburys-base']['apps'].keys.each do |k,v|
  package k do
    case v
    when '', 'latest'
      action :install
    when 'remove'
      action :remove
    when 'purge'
      action :purge
    when 'upgrade'
      action :upgrade
    else
      if v =~ /\d+\.\d+\./
        version v
        action :install
      end
    end
  end
end
