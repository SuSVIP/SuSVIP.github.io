{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ config.title }}{% endblock %}
{% block class %}index posts-expand{% endblock %}

{% block content %}
  <div class="posts-expand">
    {%- for post in page.posts.toArray() %}
      <article class="post post-type-normal">
        <header class="post-header">
          <h1 class="post-title">
            <a class="post-title-link" href="{{ url_for(post.path) }}">
              {{ post.title }}
            </a>
          </h1>
          <div class="post-meta">
            <span class="post-time">
              <span class="post-meta-item-icon">
                <i class="fa fa-calendar-o"></i>
              </span>
              <span class="post-meta-item-text">{{ __('post.created') }}: </span>
              <time title="{{ __('post.created') }}" itemprop="dateCreated datePublished" datetime="{{ post.date.toISOString() }}">
                {{ post.date.format(config.date_format) }}
              </time>
            </span>
          </div>
        </header>
        <div class="post-body">
          {{ post.excerpt }}
          <p class="post-more-link">
            <a href="{{ url_for(post.path) }}" class="btn">
              {{ __('post.read_more') }}
            </a>
          </p>
        </div>
      </article>
    {%- endfor %}
  </div>

  {% include '_partials/pagination.swig' %}
  
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}