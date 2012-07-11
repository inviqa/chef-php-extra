# Description

Installs and configures additional PHP modules and PEAR packages that are commonly used but not part of the Opscode Cookbooks. This includes additional tools that are used during development for quality assurance and testing.

# Requirements

## Platform

* Debian, Ubuntu
* CentOS, Red Hat, Fedora

## Cookbooks

* php

# Attributes

# Usage

You can select any of the recipes to be executed directly referencing them from this cookbook.

    chef-php-extra::xdebug
    
If you are setting up a development environment you can use the single recipe that will add all the standard tools that may be used during development of projects

    chef-php-extra::development


