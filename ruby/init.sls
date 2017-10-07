# -*- coding: utf-8 -*-
# vim: ft=sls
# Init ruby
{%- from "ruby/map.jinja" import ruby with context %}

{# Below is an example of having a toggle for the state #}
{% if ruby.enabled %}
include:
  - ruby.install
{% else %}
'ruby-formula disabled':
  test.succeed_without_changes
{% endif %}
