<?php

/* default/template/account/login.twig */
class __TwigTemplate_98d29092d6c54e7f23af0983272876cd92b62d78ec6c6a5c89e9008c7071cb15 extends Twig_Template
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
        echo (isset($context["header"]) ? $context["header"] : null);
        echo "
<div id=\"account-login\" class=\"container\">
  <ul class=\"breadcrumb\">";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["breadcrumbs"]) ? $context["breadcrumbs"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 5
            echo "    <li><a href=\"";
            echo $this->getAttribute($context["breadcrumb"], "href", array());
            echo "\">";
            echo $this->getAttribute($context["breadcrumb"], "text", array());
            echo "</a></li>";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 7
        echo "  </ul>";
        // line 8
        if ((isset($context["success"]) ? $context["success"] : null)) {
            // line 9
            echo "  <div class=\"alert alert-success alert-dismissible\"><i class=\"fa fa-check-circle\"></i>";
            echo (isset($context["success"]) ? $context["success"] : null);
            echo "</div>";
        }
        // line 11
        if ((isset($context["error_warning"]) ? $context["error_warning"] : null)) {
            // line 12
            echo "  <div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i>";
            echo (isset($context["error_warning"]) ? $context["error_warning"] : null);
            echo "</div>";
        }
        // line 14
        echo "  <div class=\"row\">";
        echo (isset($context["column_left"]) ? $context["column_left"] : null);
        // line 15
        if (((isset($context["column_left"]) ? $context["column_left"] : null) && (isset($context["column_right"]) ? $context["column_right"] : null))) {
            // line 16
            $context["class"] = "col-sm-6";
        } elseif ((        // line 17
(isset($context["column_left"]) ? $context["column_left"] : null) || (isset($context["column_right"]) ? $context["column_right"] : null))) {
            // line 18
            $context["class"] = "col-sm-9";
        } else {
            // line 20
            $context["class"] = "col-sm-12";
        }
        // line 22
        echo "    <div id=\"content\" class=\"";
        echo (isset($context["class"]) ? $context["class"] : null);
        echo "\">";
        echo (isset($context["content_top"]) ? $context["content_top"] : null);
        echo "
      <div class=\"row\">
        <div class=\"col-sm-6\">
          <div class=\"well\">
            <h2>";
        // line 26
        echo (isset($context["text_new_customer"]) ? $context["text_new_customer"] : null);
        echo "</h2>
            <p><strong>";
        // line 27
        echo (isset($context["text_register"]) ? $context["text_register"] : null);
        echo "</strong></p>
            <p>";
        // line 28
        echo (isset($context["text_register_account"]) ? $context["text_register_account"] : null);
        echo "</p>
            <a href=\"";
        // line 29
        echo (isset($context["register"]) ? $context["register"] : null);
        echo "\" class=\"btn btn-primary\">";
        echo (isset($context["button_continue"]) ? $context["button_continue"] : null);
        echo "</a></div>
        </div>
        <div class=\"col-sm-6\">
          <div class=\"well\">
            <h2>";
        // line 33
        echo (isset($context["text_returning_customer"]) ? $context["text_returning_customer"] : null);
        echo "</h2>
            <p><strong>";
        // line 34
        echo (isset($context["text_i_am_returning_customer"]) ? $context["text_i_am_returning_customer"] : null);
        echo "</strong></p>
            <form action=\"";
        // line 35
        echo (isset($context["action"]) ? $context["action"] : null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\">
              <div class=\"form-group\">
                <label class=\"control-label\" for=\"input-email\">";
        // line 37
        echo (isset($context["entry_email"]) ? $context["entry_email"] : null);
        echo "</label>
                <input type=\"text\" name=\"email\" value=\"";
        // line 38
        echo (isset($context["email"]) ? $context["email"] : null);
        echo "\" placeholder=\"";
        echo (isset($context["entry_email"]) ? $context["entry_email"] : null);
        echo "\" id=\"input-email\" class=\"form-control\" />
              </div>
              <div class=\"form-group\">
                <label class=\"control-label\" for=\"input-password\">";
        // line 41
        echo (isset($context["entry_password"]) ? $context["entry_password"] : null);
        echo "</label>
                <input type=\"password\" name=\"password\" value=\"";
        // line 42
        echo (isset($context["password"]) ? $context["password"] : null);
        echo "\" placeholder=\"";
        echo (isset($context["entry_password"]) ? $context["entry_password"] : null);
        echo "\" id=\"input-password\" class=\"form-control\" />
                <a href=\"";
        // line 43
        echo (isset($context["forgotten"]) ? $context["forgotten"] : null);
        echo "\">";
        echo (isset($context["text_forgotten"]) ? $context["text_forgotten"] : null);
        echo "</a></div>
              <input type=\"submit\" value=\"";
        // line 44
        echo (isset($context["button_login"]) ? $context["button_login"] : null);
        echo "\" class=\"btn btn-primary\" />";
        // line 45
        if ((isset($context["redirect"]) ? $context["redirect"] : null)) {
            // line 46
            echo "              <input type=\"hidden\" name=\"redirect\" value=\"";
            echo (isset($context["redirect"]) ? $context["redirect"] : null);
            echo "\" />";
        }
        // line 48
        echo "            </form>
          </div>
        </div>
      </div>";
        // line 52
        echo (isset($context["content_bottom"]) ? $context["content_bottom"] : null);
        echo "</div>";
        // line 53
        echo (isset($context["column_right"]) ? $context["column_right"] : null);
        echo "</div>
</div>";
        // line 55
        echo (isset($context["footer"]) ? $context["footer"] : null);
    }

    public function getTemplateName()
    {
        return "default/template/account/login.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  163 => 55,  159 => 53,  156 => 52,  151 => 48,  146 => 46,  144 => 45,  141 => 44,  135 => 43,  129 => 42,  125 => 41,  117 => 38,  113 => 37,  108 => 35,  104 => 34,  100 => 33,  91 => 29,  87 => 28,  83 => 27,  79 => 26,  69 => 22,  66 => 20,  63 => 18,  61 => 17,  59 => 16,  57 => 15,  54 => 14,  49 => 12,  47 => 11,  42 => 9,  40 => 8,  38 => 7,  28 => 5,  24 => 4,  19 => 1,);
    }
}
/* {{ header }}*/
/* <div id="account-login" class="container">*/
/*   <ul class="breadcrumb">*/
/*     {% for breadcrumb in breadcrumbs %}*/
/*     <li><a href="{{ breadcrumb.href }}">{{ breadcrumb.text }}</a></li>*/
/*     {% endfor %}*/
/*   </ul>*/
/*   {% if success %}*/
/*   <div class="alert alert-success alert-dismissible"><i class="fa fa-check-circle"></i> {{ success }}</div>*/
/*   {% endif %}*/
/*   {% if error_warning %}*/
/*   <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> {{ error_warning }}</div>*/
/*   {% endif %}*/
/*   <div class="row">{{ column_left }}*/
/*     {% if column_left and column_right %}*/
/*     {% set class = 'col-sm-6' %}*/
/*     {% elseif column_left or column_right %}*/
/*     {% set class = 'col-sm-9' %}*/
/*     {% else %}*/
/*     {% set class = 'col-sm-12' %}*/
/*     {% endif %}*/
/*     <div id="content" class="{{ class }}">{{ content_top }}*/
/*       <div class="row">*/
/*         <div class="col-sm-6">*/
/*           <div class="well">*/
/*             <h2>{{ text_new_customer }}</h2>*/
/*             <p><strong>{{ text_register }}</strong></p>*/
/*             <p>{{ text_register_account }}</p>*/
/*             <a href="{{ register }}" class="btn btn-primary">{{ button_continue }}</a></div>*/
/*         </div>*/
/*         <div class="col-sm-6">*/
/*           <div class="well">*/
/*             <h2>{{ text_returning_customer }}</h2>*/
/*             <p><strong>{{ text_i_am_returning_customer }}</strong></p>*/
/*             <form action="{{ action }}" method="post" enctype="multipart/form-data">*/
/*               <div class="form-group">*/
/*                 <label class="control-label" for="input-email">{{ entry_email }}</label>*/
/*                 <input type="text" name="email" value="{{ email }}" placeholder="{{ entry_email }}" id="input-email" class="form-control" />*/
/*               </div>*/
/*               <div class="form-group">*/
/*                 <label class="control-label" for="input-password">{{ entry_password }}</label>*/
/*                 <input type="password" name="password" value="{{ password }}" placeholder="{{ entry_password }}" id="input-password" class="form-control" />*/
/*                 <a href="{{ forgotten }}">{{ text_forgotten }}</a></div>*/
/*               <input type="submit" value="{{ button_login }}" class="btn btn-primary" />*/
/*               {% if redirect %}*/
/*               <input type="hidden" name="redirect" value="{{ redirect }}" />*/
/*               {% endif %}*/
/*             </form>*/
/*           </div>*/
/*         </div>*/
/*       </div>*/
/*       {{ content_bottom }}</div>*/
/*     {{ column_right }}</div>*/
/* </div>*/
/* {{ footer }}*/
