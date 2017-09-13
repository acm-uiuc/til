---
title: tmux - Table of Contents
category: tmux
permalink: /tmux/
order: 1
---

<div>
<ul>
{% for til in site.til %}
    {% if til.path contains "tmux" %}
        {% assign til_name = til.path | remove: "_til/tmux/" %}
        {% assign til_name = til_name | remove: ".md" %}

        {% assign til_link = til.path | remove: "_til" %}
        {% assign til_link = til_link | remove: '.md' %}

        <li><a href="{{til_link}}"><h4 style="transform: translate(10px, -30px);">{{til_name}}</h4></a></li>
    {% endif %}
{% endfor %}
<ul>
