# -*- coding: utf-8 -*-
# vim: ft=sls
# How to install ruby
{%- from "ruby/map.jinja" import ruby with context %}

ruby_pkgs:
  pkg.installed:
    - pkgs: {{ ruby.required_pkgs }}

{%- if ruby.gem_sources is defined %}
  {%- for source in ruby.gem_sources %}
ruby_gem_source_{{ source }}:
  gem.sources_add:
    - name: {{ source }}
  {%- endfor %}
{%- endif %}

{%- if ruby.gems is defined %}
  {%- for gem in ruby.gems %}
ruby_gem_{{ gem }}:
  gem.installed:
    - name: {{ gem }}
  {%- endfor %}
{%- endif %}
