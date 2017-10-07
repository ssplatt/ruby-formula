# -*- coding: utf-8 -*-
# vim: ft=yaml
# Custom Pillar Data for ruby

ruby:
  enabled: True
  required_pkgs:
    - ruby-dev
    - rubygems
    - build-essential
    - zlib1g-dev
  gems:
    - test-kitchen
    - kitchen-linode
  sources:
    - https://gem.fury.io
