#!/usr/bin/env sh
# Copyright 2015 The TensorFlow Authors. All Rights Reserved.
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
# ==============================================================================
BASE_URL='/apisrv/'${APP_SUB_DOMAIN}'~'${APP_OWNER_ID}'/'
echo 'Application base url for static content: '$BASE_URL
sed -i "s|BASE_URL|$BASE_URL|g" /opt/cloud-apps/static/index.html

python /opt/cloud-apps/service.py "$@"