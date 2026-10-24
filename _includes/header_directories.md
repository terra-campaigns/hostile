# {{ page.title }}
{: .text-right}

{% if page.role %}
#### **{{ page.role }}** {% if page.status %} ({{ page.status }}) {% endif %}
{: .text-right}
{% endif %}

{% include connected_to.html %}
