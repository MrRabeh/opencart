<?php

/* default/template/mail/register.twig */
class __TwigTemplate_b5cf9909dedeb7d94612d9415c5a8cdd61a58f2e90790c9d12937957309fdf7d extends Twig_Template
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
        echo (isset($context["text_welcome"]) ? $context["text_welcome"] : null);
        // line 3
        if ( !(isset($context["approval"]) ? $context["approval"] : null)) {
            // line 4
            echo (isset($context["text_login"]) ? $context["text_login"] : null);
            // line 6
            echo (isset($context["login"]) ? $context["login"] : null);
            // line 8
            echo (isset($context["text_service"]) ? $context["text_service"] : null);
            // line 10
            echo (isset($context["text_thanks"]) ? $context["text_thanks"] : null);
            // line 11
            echo (isset($context["store"]) ? $context["store"] : null);
        } else {
            // line 13
            echo (isset($context["text_approval"]) ? $context["text_approval"] : null);
            // line 15
            echo (isset($context["login"]) ? $context["login"] : null);
            // line 17
            echo (isset($context["text_thanks"]) ? $context["text_thanks"] : null);
            // line 18
            echo (isset($context["store"]) ? $context["store"] : null);
        }
    }

    public function getTemplateName()
    {
        return "default/template/mail/register.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  40 => 18,  38 => 17,  36 => 15,  34 => 13,  31 => 11,  29 => 10,  27 => 8,  25 => 6,  23 => 4,  21 => 3,  19 => 1,);
    }
}
/* {{ text_welcome }}*/
/* */
/* {% if not approval %}*/
/* {{ text_login }}*/
/* */
/* {{ login }}*/
/* */
/* {{ text_service }}*/
/* */
/* {{ text_thanks }}*/
/* {{ store }}*/
/* {% else %}*/
/* {{ text_approval }}*/
/* */
/* {{ login }}*/
/* */
/* {{ text_thanks }}*/
/* {{ store }}*/
/* {% endif %}*/
