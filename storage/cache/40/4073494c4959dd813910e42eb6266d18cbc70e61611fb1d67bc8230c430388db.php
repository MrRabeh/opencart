<?php

/* extension/extension/advertise.twig */
class __TwigTemplate_3651c84e52f3f79c6561c7841a8a178f055163f536579966a5c6108dd482884b extends Twig_Template
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
        echo "<fieldset>
  <legend>";
        // line 2
        echo (isset($context["heading_title"]) ? $context["heading_title"] : null);
        echo "</legend>
  <div id=\"blockerError\" style=\"display: none;\" class=\"alert alert-danger\">
    <i class=\"fa fa-exclamation-circle\"></i>";
        // line 4
        echo (isset($context["error_adblock"]) ? $context["error_adblock"] : null);
        echo "
  </div>";
        // line 6
        if ((isset($context["error_warning"]) ? $context["error_warning"] : null)) {
            // line 7
            echo "  <div class=\"alert alert-danger alert-dismissible\"><i class=\"fa fa-exclamation-circle\"></i>";
            echo (isset($context["error_warning"]) ? $context["error_warning"] : null);
            echo "
    <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
  </div>";
        }
        // line 11
        if ((isset($context["success"]) ? $context["success"] : null)) {
            // line 12
            echo "  <div class=\"alert alert-success alert-dismissible\"><i class=\"fa fa-check-circle\"></i>";
            echo (isset($context["success"]) ? $context["success"] : null);
            echo "
    <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>
  </div>";
        }
        // line 16
        echo "  <div class=\"table-responsive\">
    <table class=\"table table-bordered table-hover\">
      <thead>
        <tr>
          <td class=\"text-left\">";
        // line 20
        echo (isset($context["column_name"]) ? $context["column_name"] : null);
        echo "</td>
          <td class=\"text-left\">";
        // line 21
        echo (isset($context["column_status"]) ? $context["column_status"] : null);
        echo "</td>
          <td class=\"text-right\">";
        // line 22
        echo (isset($context["column_action"]) ? $context["column_action"] : null);
        echo "</td>
        </tr>
      </thead>
      <tbody>";
        // line 26
        if ((isset($context["extensions"]) ? $context["extensions"] : null)) {
            // line 27
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["extensions"]) ? $context["extensions"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["extension"]) {
                // line 28
                echo "        <tr>
          <td class=\"text-left\" colspan=\"2\"><b>";
                // line 29
                echo $this->getAttribute($context["extension"], "name", array());
                echo "</b></td>
          <td class=\"text-right\">";
                // line 30
                if ( !$this->getAttribute($context["extension"], "installed", array())) {
                    // line 31
                    echo "            <a href=\"";
                    echo $this->getAttribute($context["extension"], "install", array());
                    echo "\" data-toggle=\"tooltip\" title=\"";
                    echo (isset($context["button_install"]) ? $context["button_install"] : null);
                    echo "\" class=\"btn btn-success\"><i class=\"fa fa-plus-circle\"></i></a>";
                } else {
                    // line 33
                    echo "            <a href=\"";
                    echo $this->getAttribute($context["extension"], "uninstall", array());
                    echo "\" data-toggle=\"tooltip\" title=\"";
                    echo (isset($context["button_uninstall"]) ? $context["button_uninstall"] : null);
                    echo "\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></a>";
                }
                // line 34
                echo "</td>
        </tr>";
                // line 36
                if ($this->getAttribute($context["extension"], "installed", array())) {
                    // line 37
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["extension"], "store", array()));
                    foreach ($context['_seq'] as $context["_key"] => $context["store"]) {
                        // line 38
                        echo "        <tr>
          <td class=\"text-left\">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;";
                        // line 39
                        echo $this->getAttribute($context["store"], "name", array());
                        echo "</td>
          <td class=\"text-left\">";
                        // line 40
                        echo $this->getAttribute($context["store"], "status", array());
                        echo "</td>
          <td class=\"text-right\"><a href=\"";
                        // line 41
                        echo $this->getAttribute($context["store"], "edit", array());
                        echo "\" data-toggle=\"tooltip\" title=\"";
                        echo (isset($context["button_edit"]) ? $context["button_edit"] : null);
                        echo "\" class=\"btn btn-primary\"><i class=\"fa fa-pencil\"></i></a></td>
        </tr>";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['store'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['extension'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        } else {
            // line 47
            echo "        <tr>
          <td class=\"text-center\" colspan=\"3\">";
            // line 48
            echo (isset($context["text_no_results"]) ? $context["text_no_results"] : null);
            echo "</td>
        </tr>";
        }
        // line 51
        echo "      </tbody>
    </table>
  </div>
</fieldset>
<style type=\"text/css\">
  .adBanner {
      background-color: transparent;
      height: 1px;
      width: 1px;
  }
</style>
<div id=\"wrapTest\">
    <div class=\"adBanner\">
    </div>
</div>
<script type=\"text/javascript\">
  (function(\$) {
    \$(document).ready(function() {
      \$('#blockerError').toggle(\$(\"#wrapTest\").height() == 0);
    });
  })(jQuery);
</script>";
    }

    public function getTemplateName()
    {
        return "extension/extension/advertise.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  142 => 51,  137 => 48,  134 => 47,  118 => 41,  114 => 40,  110 => 39,  107 => 38,  103 => 37,  101 => 36,  98 => 34,  91 => 33,  84 => 31,  82 => 30,  78 => 29,  75 => 28,  71 => 27,  69 => 26,  63 => 22,  59 => 21,  55 => 20,  49 => 16,  42 => 12,  40 => 11,  33 => 7,  31 => 6,  27 => 4,  22 => 2,  19 => 1,);
    }
}
/* <fieldset>*/
/*   <legend>{{ heading_title }}</legend>*/
/*   <div id="blockerError" style="display: none;" class="alert alert-danger">*/
/*     <i class="fa fa-exclamation-circle"></i> {{ error_adblock }}*/
/*   </div>*/
/*   {% if error_warning %}*/
/*   <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> {{ error_warning }}*/
/*     <button type="button" class="close" data-dismiss="alert">&times;</button>*/
/*   </div>*/
/*   {% endif %}*/
/*   {% if success %}*/
/*   <div class="alert alert-success alert-dismissible"><i class="fa fa-check-circle"></i> {{ success }}*/
/*     <button type="button" class="close" data-dismiss="alert">&times;</button>*/
/*   </div>*/
/*   {% endif %}*/
/*   <div class="table-responsive">*/
/*     <table class="table table-bordered table-hover">*/
/*       <thead>*/
/*         <tr>*/
/*           <td class="text-left">{{ column_name }}</td>*/
/*           <td class="text-left">{{ column_status }}</td>*/
/*           <td class="text-right">{{ column_action }}</td>*/
/*         </tr>*/
/*       </thead>*/
/*       <tbody>*/
/*         {% if extensions %}*/
/*         {% for extension in extensions %}*/
/*         <tr>*/
/*           <td class="text-left" colspan="2"><b>{{ extension.name }}</b></td>*/
/*           <td class="text-right">{% if not extension.installed %}*/
/*             <a href="{{ extension.install }}" data-toggle="tooltip" title="{{ button_install }}" class="btn btn-success"><i class="fa fa-plus-circle"></i></a>*/
/*             {% else %}*/
/*             <a href="{{ extension.uninstall }}" data-toggle="tooltip" title="{{ button_uninstall }}" class="btn btn-danger"><i class="fa fa-minus-circle"></i></a>*/
/*             {% endif %}</td>*/
/*         </tr>*/
/*         {% if extension.installed %}*/
/*         {% for store in extension.store %}*/
/*         <tr>*/
/*           <td class="text-left">&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;{{ store.name }}</td>*/
/*           <td class="text-left">{{ store.status }}</td>*/
/*           <td class="text-right"><a href="{{ store.edit }}" data-toggle="tooltip" title="{{ button_edit }}" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>*/
/*         </tr>*/
/*         {% endfor %}*/
/*         {% endif %}*/
/*         {% endfor %}*/
/*         {% else %}*/
/*         <tr>*/
/*           <td class="text-center" colspan="3">{{ text_no_results }}</td>*/
/*         </tr>*/
/*         {% endif %}*/
/*       </tbody>*/
/*     </table>*/
/*   </div>*/
/* </fieldset>*/
/* <style type="text/css">*/
/*   .adBanner {*/
/*       background-color: transparent;*/
/*       height: 1px;*/
/*       width: 1px;*/
/*   }*/
/* </style>*/
/* <div id="wrapTest">*/
/*     <div class="adBanner">*/
/*     </div>*/
/* </div>*/
/* <script type="text/javascript">*/
/*   (function($) {*/
/*     $(document).ready(function() {*/
/*       $('#blockerError').toggle($("#wrapTest").height() == 0);*/
/*     });*/
/*   })(jQuery);*/
/* </script>*/
