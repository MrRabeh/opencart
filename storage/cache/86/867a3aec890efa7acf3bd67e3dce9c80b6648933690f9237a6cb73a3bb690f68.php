<?php

/* default/template/mail/order_add.twig */
class __TwigTemplate_d598f60df05795f87ed8490d75d251141627933c452f958e8f42be35cc9a5e7f extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd\">
<html>
<head>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
<title>";
        // line 5
        echo (isset($context["title"]) ? $context["title"] : null);
        echo "</title>
</head>
<body style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000;\">
<div style=\"width: 680px;\"><a href=\"";
        // line 8
        echo (isset($context["store_url"]) ? $context["store_url"] : null);
        echo "\" title=\"";
        echo (isset($context["store_name"]) ? $context["store_name"] : null);
        echo "\"><img src=\"";
        echo (isset($context["logo"]) ? $context["logo"] : null);
        echo "\" alt=\"";
        echo (isset($context["store_name"]) ? $context["store_name"] : null);
        echo "\" style=\"margin-bottom: 20px; border: none;\" /></a>
  <p style=\"margin-top: 0px; margin-bottom: 20px;\">";
        // line 9
        echo (isset($context["text_greeting"]) ? $context["text_greeting"] : null);
        echo "</p>";
        // line 10
        if ((isset($context["customer_id"]) ? $context["customer_id"] : null)) {
            // line 11
            echo "  <p style=\"margin-top: 0px; margin-bottom: 20px;\">";
            echo (isset($context["text_link"]) ? $context["text_link"] : null);
            echo "</p>
  <p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"";
            // line 12
            echo (isset($context["link"]) ? $context["link"] : null);
            echo "\">";
            echo (isset($context["link"]) ? $context["link"] : null);
            echo "</a></p>";
        }
        // line 14
        if ((isset($context["download"]) ? $context["download"] : null)) {
            // line 15
            echo "  <p style=\"margin-top: 0px; margin-bottom: 20px;\">";
            echo (isset($context["text_download"]) ? $context["text_download"] : null);
            echo "</p>
  <p style=\"margin-top: 0px; margin-bottom: 20px;\"><a href=\"";
            // line 16
            echo (isset($context["download"]) ? $context["download"] : null);
            echo "\">";
            echo (isset($context["download"]) ? $context["download"] : null);
            echo "</a></p>
  <";
        }
        // line 18
        echo "  <table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">
    <thead>
      <tr>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;\" colspan=\"2\">";
        // line 21
        echo (isset($context["text_order_detail"]) ? $context["text_order_detail"] : null);
        echo "</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><b>";
        // line 26
        echo (isset($context["text_order_id"]) ? $context["text_order_id"] : null);
        echo "</b>";
        echo (isset($context["order_id"]) ? $context["order_id"] : null);
        echo "<br />
          <b>";
        // line 27
        echo (isset($context["text_date_added"]) ? $context["text_date_added"] : null);
        echo "</b>";
        echo (isset($context["date_added"]) ? $context["date_added"] : null);
        echo "<br />
          <b>";
        // line 28
        echo (isset($context["text_payment_method"]) ? $context["text_payment_method"] : null);
        echo "</b>";
        echo (isset($context["payment_method"]) ? $context["payment_method"] : null);
        echo "<br />";
        // line 29
        if ((isset($context["shipping_method"]) ? $context["shipping_method"] : null)) {
            echo " <b>";
            echo (isset($context["text_shipping_method"]) ? $context["text_shipping_method"] : null);
            echo "</b>";
            echo (isset($context["shipping_method"]) ? $context["shipping_method"] : null);
        }
        // line 30
        echo "</td>
        <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"><b>";
        // line 31
        echo (isset($context["text_email"]) ? $context["text_email"] : null);
        echo "</b>";
        echo (isset($context["email"]) ? $context["email"] : null);
        echo "<br />
          <b>";
        // line 32
        echo (isset($context["text_telephone"]) ? $context["text_telephone"] : null);
        echo "</b>";
        echo (isset($context["telephone"]) ? $context["telephone"] : null);
        echo "<br />
          <b>";
        // line 33
        echo (isset($context["text_ip"]) ? $context["text_ip"] : null);
        echo "</b>";
        echo (isset($context["ip"]) ? $context["ip"] : null);
        echo "<br />
          <b>";
        // line 34
        echo (isset($context["text_order_status"]) ? $context["text_order_status"] : null);
        echo "</b>";
        echo (isset($context["order_status"]) ? $context["order_status"] : null);
        echo "<br /></td>
      </tr>
    </tbody>
  </table>";
        // line 38
        if ((isset($context["comment"]) ? $context["comment"] : null)) {
            // line 39
            echo "  <table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">
    <thead>
      <tr>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">";
            // line 42
            echo (isset($context["text_instruction"]) ? $context["text_instruction"] : null);
            echo "</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">";
            // line 47
            echo (isset($context["comment"]) ? $context["comment"] : null);
            echo "</td>
      </tr>
    </tbody>
  </table>";
        }
        // line 52
        echo "  <table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">
    <thead>
      <tr>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">";
        // line 55
        echo (isset($context["text_payment_address"]) ? $context["text_payment_address"] : null);
        echo "</td>";
        // line 56
        if ((isset($context["shipping_address"]) ? $context["shipping_address"] : null)) {
            // line 57
            echo "        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">";
            echo (isset($context["text_shipping_address"]) ? $context["text_shipping_address"] : null);
            echo "</td>";
        }
        // line 58
        echo " </tr>
    </thead>
    <tbody>
      <tr>
        <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">";
        // line 62
        echo (isset($context["payment_address"]) ? $context["payment_address"] : null);
        echo "</td>";
        // line 63
        if ((isset($context["shipping_address"]) ? $context["shipping_address"] : null)) {
            // line 64
            echo "        <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">";
            echo (isset($context["shipping_address"]) ? $context["shipping_address"] : null);
            echo "</td>";
        }
        // line 65
        echo " </tr>
    </tbody>
  </table>
  <table style=\"border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;\">
    <thead>
      <tr>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">";
        // line 71
        echo (isset($context["text_product"]) ? $context["text_product"] : null);
        echo "</td>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;\">";
        // line 72
        echo (isset($context["text_model"]) ? $context["text_model"] : null);
        echo "</td>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;\">";
        // line 73
        echo (isset($context["text_quantity"]) ? $context["text_quantity"] : null);
        echo "</td>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;\">";
        // line 74
        echo (isset($context["text_price"]) ? $context["text_price"] : null);
        echo "</td>
        <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;\">";
        // line 75
        echo (isset($context["text_total"]) ? $context["text_total"] : null);
        echo "</td>
      </tr>
    </thead>
    <tbody>";
        // line 80
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["products"]) ? $context["products"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["product"]) {
            // line 81
            echo "    <tr>
      <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">";
            // line 82
            echo $this->getAttribute($context["product"], "name", array());
            // line 83
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["product"], "option", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["option"]) {
                echo "<br />
        &nbsp;<small> -";
                // line 84
                echo $this->getAttribute($context["option"], "name", array());
                echo ":";
                echo $this->getAttribute($context["option"], "value", array());
                echo "</small>";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['option'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</td>
      <td style=\"font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">";
            // line 85
            echo $this->getAttribute($context["product"], "model", array());
            echo "</td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\">";
            // line 86
            echo $this->getAttribute($context["product"], "quantity", array());
            echo "</td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\">";
            // line 87
            echo $this->getAttribute($context["product"], "price", array());
            echo "</td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\">";
            // line 88
            echo $this->getAttribute($context["product"], "total", array());
            echo "</td>
    </tr>";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['product'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 91
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["vouchers"]) ? $context["vouchers"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["voucher"]) {
            // line 92
            echo "    <tr>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\">";
            // line 93
            echo $this->getAttribute($context["voucher"], "description", array());
            echo "</td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;\"></td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\">1</td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\">";
            // line 96
            echo $this->getAttribute($context["voucher"], "amount", array());
            echo "</td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\">";
            // line 97
            echo $this->getAttribute($context["voucher"], "amount", array());
            echo "</td>
    </tr>";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['voucher'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 100
        echo "      </tbody>
    
    <tfoot>";
        // line 104
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["totals"]) ? $context["totals"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["total"]) {
            // line 105
            echo "    <tr>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\" colspan=\"4\"><b>";
            // line 106
            echo $this->getAttribute($context["total"], "title", array());
            echo ":</b></td>
      <td style=\"font-size: 12px;\tborder-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;\">";
            // line 107
            echo $this->getAttribute($context["total"], "text", array());
            echo "</td>
    </tr>";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['total'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 110
        echo "      </tfoot>
    
  </table>
  <p style=\"margin-top: 0px; margin-bottom: 20px;\">";
        // line 113
        echo (isset($context["text_footer"]) ? $context["text_footer"] : null);
        echo "</p>
</div>
</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "default/template/mail/order_add.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  319 => 113,  314 => 110,  306 => 107,  302 => 106,  299 => 105,  295 => 104,  291 => 100,  283 => 97,  279 => 96,  273 => 93,  270 => 92,  266 => 91,  258 => 88,  254 => 87,  250 => 86,  246 => 85,  235 => 84,  229 => 83,  227 => 82,  224 => 81,  220 => 80,  214 => 75,  210 => 74,  206 => 73,  202 => 72,  198 => 71,  190 => 65,  185 => 64,  183 => 63,  180 => 62,  174 => 58,  169 => 57,  167 => 56,  164 => 55,  159 => 52,  152 => 47,  144 => 42,  139 => 39,  137 => 38,  129 => 34,  123 => 33,  117 => 32,  111 => 31,  108 => 30,  101 => 29,  96 => 28,  90 => 27,  84 => 26,  76 => 21,  71 => 18,  64 => 16,  59 => 15,  57 => 14,  51 => 12,  46 => 11,  44 => 10,  41 => 9,  31 => 8,  25 => 5,  19 => 1,);
    }
}
/* <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd">*/
/* <html>*/
/* <head>*/
/* <meta http-equiv="Content-Type" content="text/html; charset=utf-8">*/
/* <title>{{ title }}</title>*/
/* </head>*/
/* <body style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000;">*/
/* <div style="width: 680px;"><a href="{{ store_url }}" title="{{ store_name }}"><img src="{{ logo }}" alt="{{ store_name }}" style="margin-bottom: 20px; border: none;" /></a>*/
/*   <p style="margin-top: 0px; margin-bottom: 20px;">{{ text_greeting }}</p>*/
/*   {% if customer_id %}*/
/*   <p style="margin-top: 0px; margin-bottom: 20px;">{{ text_link }}</p>*/
/*   <p style="margin-top: 0px; margin-bottom: 20px;"><a href="{{ link }}">{{ link }}</a></p>*/
/*   {% endif %}*/
/*   {% if download %}*/
/*   <p style="margin-top: 0px; margin-bottom: 20px;">{{ text_download }}</p>*/
/*   <p style="margin-top: 0px; margin-bottom: 20px;"><a href="{{ download }}">{{ download }}</a></p>*/
/*   <{% endif %}*/
/*   <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">*/
/*     <thead>*/
/*       <tr>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;" colspan="2">{{ text_order_detail }}</td>*/
/*       </tr>*/
/*     </thead>*/
/*     <tbody>*/
/*       <tr>*/
/*         <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><b>{{ text_order_id }}</b> {{ order_id }}<br />*/
/*           <b>{{ text_date_added }}</b> {{ date_added }}<br />*/
/*           <b>{{ text_payment_method }}</b> {{ payment_method }}<br />*/
/*           {% if shipping_method %} <b>{{ text_shipping_method }}</b> {{ shipping_method }}*/
/*           {% endif %}</td>*/
/*         <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><b>{{ text_email }}</b> {{ email }}<br />*/
/*           <b>{{ text_telephone }}</b> {{ telephone }}<br />*/
/*           <b>{{ text_ip }}</b> {{ ip }}<br />*/
/*           <b>{{ text_order_status }}</b> {{ order_status }}<br /></td>*/
/*       </tr>*/
/*     </tbody>*/
/*   </table>*/
/*   {% if comment %}*/
/*   <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">*/
/*     <thead>*/
/*       <tr>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;">{{ text_instruction }}</td>*/
/*       </tr>*/
/*     </thead>*/
/*     <tbody>*/
/*       <tr>*/
/*         <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;">{{ comment }}</td>*/
/*       </tr>*/
/*     </tbody>*/
/*   </table>*/
/*   {% endif %}*/
/*   <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">*/
/*     <thead>*/
/*       <tr>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;">{{ text_payment_address }}</td>*/
/*         {% if shipping_address %}*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;">{{ text_shipping_address }}</td>*/
/*         {% endif %} </tr>*/
/*     </thead>*/
/*     <tbody>*/
/*       <tr>*/
/*         <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;">{{ payment_address }}</td>*/
/*         {% if shipping_address %}*/
/*         <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;">{{ shipping_address }}</td>*/
/*         {% endif %} </tr>*/
/*     </tbody>*/
/*   </table>*/
/*   <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">*/
/*     <thead>*/
/*       <tr>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;">{{ text_product }}</td>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;">{{ text_model }}</td>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;">{{ text_quantity }}</td>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;">{{ text_price }}</td>*/
/*         <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;">{{ text_total }}</td>*/
/*       </tr>*/
/*     </thead>*/
/*     <tbody>*/
/*     */
/*     {% for product in products %}*/
/*     <tr>*/
/*       <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;">{{ product.name }}*/
/*         {% for option in product.option %}<br />*/
/*         &nbsp;<small> - {{ option.name }}: {{ option.value }}</small>{% endfor %}</td>*/
/*       <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;">{{ product.model }}</td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">{{ product.quantity }}</td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">{{ product.price }}</td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">{{ product.total }}</td>*/
/*     </tr>*/
/*     {% endfor %}*/
/*     {% for voucher in vouchers %}*/
/*     <tr>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;">{{ voucher.description }}</td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"></td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">1</td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">{{ voucher.amount }}</td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">{{ voucher.amount }}</td>*/
/*     </tr>*/
/*     {% endfor %}*/
/*       </tbody>*/
/*     */
/*     <tfoot>*/
/*     */
/*     {% for total in totals %}*/
/*     <tr>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;" colspan="4"><b>{{ total.title }}:</b></td>*/
/*       <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">{{ total.text }}</td>*/
/*     </tr>*/
/*     {% endfor %}*/
/*       </tfoot>*/
/*     */
/*   </table>*/
/*   <p style="margin-top: 0px; margin-bottom: 20px;">{{ text_footer }}</p>*/
/* </div>*/
/* </body>*/
/* </html>*/
/* */
