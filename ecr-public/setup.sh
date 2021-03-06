#!/usr/bin/env bash
# Copyright 2021 Amazon.com Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function install_ecr_public {
    if [ ! -f ~/.aws/models/ecr-public/2020-10-30/service-2.json ]
    then
        BASEDIR=$(dirname "$0")
        aws configure add-model \
          --service-model file://${BASEDIR}/ecr-public-2020-10-30.api.json \
          --service-name ecr-public
    fi
}

install_ecr_public
