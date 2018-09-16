# Copyright (C) 2018 Makefile
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

asfvolt16-3.7:
	if [ ! -e "OpenNetworkLinux" ]; then \
		git clone https://github.com/Lewis-Kang/OpenNetworkLinux.git -b kernel_3.7.10; \
		mv build-asfvolt16.sh OpenNetworkLinux; \
	fi;
	cd OpenNetworkLinux && git pull && docker/tools/onlbuilder --non-interactive -8 -c ./build-asfvolt16.sh
	
asfvolt16-4.14:
	if [ ! -e "OpenNetworkLinux" ]; then \
		git clone https://github.com/jcsteven/OpenNetworkLinux.git -b asxvolt16; \
		mv build-asfvolt16.sh OpenNetworkLinux; \
	fi;
	cd OpenNetworkLinux && git pull && docker/tools/onlbuilder --non-interactive -8 -c ./build-asfvolt16.sh

