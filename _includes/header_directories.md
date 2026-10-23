{% comment %} template: 0.4 {% endcomment %}
{% assign template_num = page.template | plus: 0 %}
{% if page.template == nil or template_num == 0 or template_num >= 0.4 %}

# {{ page.title }}
{: .text-right}

{% if page.role %}
#### {{ page.role }}
{: .text-right}
{% endif %}

{% endif %}

{% include connected_to.html %}

{% if page.statblock %} 

<details close markdown="block">
  <summary id="index">
    <b>Statblock</b><br> 
  </summary>
{: .text-delta}
{{ page.hp }} HP, {{ page.armour }} Armour, {{ page.str }} STR, {{ page.dex }} DEX, {{ page.wil }} WIL, {{ page.at }}
{: .fs-3 }
{% for sec in page.details %}
{{ sec }} <br> {% endfor %}
{: .fs-3 }
</details>

{% endif %}
