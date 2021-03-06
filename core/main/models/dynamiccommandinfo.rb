#
#   Copyright 2011 Wade Alcorn wade@bindshell.net
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
module BeEF
module Core
module Models

  class DynamicCommandInfo
  
    include DataMapper::Resource
  
    storage_names[:default] = 'core_dynamiccommandinfo'
  
  	property :id, Serial
    property :name, Text, :lazy => false
    property :description, Text, :lazy => false
  	property :targets, Text, :lazy => false
  	belongs_to :command_module
  
  end

end
end
end