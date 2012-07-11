# Description

Installs and configures additional PHP modules and PEAR packages that are commonly used but not part of the Opscode Cookbooks. This includes additional tools that are used during development for quality assurance and testing.

# Requirements

Chef 0.10.0 or higher required (for Chef environment use).

## Platform

* Debian, Ubuntu
* CentOS, Red Hat, Fedora

## Cookbooks

The following Opscode cookbooks are dependencies:

* php

# Attributes

# Recipes

## default

## development

## module_dev

## module_soap

## module_xml

## pear

## PHP_CodeBrowser

## PHP_CodeSniffer

## PHP_Depend

## PHP_PMD

## phpcpd

## PhpDocumentor

## phploc

## PHPUnit

## vfsStream

## xdebug

## zendframework

# Usage

You can select any of the recipes to be executed directly referencing them from this cookbook.

    chef-php-extra::xdebug
    
If you are setting up a development environment you can use the single recipe that will add all the standard tools that may be used during development of projects

    chef-php-extra::development

# License and Author

Author:: Alistair Stead (alistair@inviqa.com)

Copyright 2012, Inviqa

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

