<?php

/* FreelanceDenverPortfolioBundle:Main:index.html.twig */
class __TwigTemplate_8f87b93b9c43c23f3c450f0f0aff7c38aa33119f357c2f1580de3bbb6285c1d4 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("FreelanceDenverPortfolioBundle::base.html.twig", "FreelanceDenverPortfolioBundle:Main:index.html.twig", 1);
        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'body' => array($this, 'block_body'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "FreelanceDenverPortfolioBundle::base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 2
    public function block_title($context, array $blocks = array())
    {
        echo "Home";
    }

    // line 3
    public function block_body($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        if ( !twig_test_empty((isset($context["videoattributes"]) ? $context["videoattributes"] : $this->getContext($context, "videoattributes")))) {
            // line 5
            echo "        <div class=\"videocontainer span12\">
            <div class=\"gamerow row\">
                <div class=\"hidden-xs hidden-sm col-md-3 col-md-3 col-lg-3\">";
            // line 7
            echo $this->env->getExtension('translator')->trans("Title");
            echo ":</div>

                <div class=\"hidden-xs hidden-sm col-md-3 col-lg-3\">";
            // line 9
            echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("URL"), "html", null, true);
            echo ":</div>

                <div class=\"hidden-xs hidden-sm col-md-6 col-lg-6\">";
            // line 11
            echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans("description2", array(), "SonataUserBundle"), "html", null, true);
            echo ":</div>
             </div>
    ";
        }
        // line 14
        echo "        ";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["videoattributes"]) ? $context["videoattributes"] : $this->getContext($context, "videoattributes")));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["key"] => $context["attribute"]) {
            // line 15
            echo "                ";
            if ( !twig_test_empty($context["attribute"])) {
                echo " 
                        <div class=\"gamerow row span12";
                // line 16
                echo twig_escape_filter($this->env, twig_cycle(array(0 => "odd", 1 => "even"), $this->getAttribute($context["loop"], "index0", array())), "html", null, true);
                echo "\">
                            <div class=\"col-sm-3\">";
                // line 17
                echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans($this->getAttribute($context["attribute"], "title", array())), "html", null, true);
                echo "</div>

                            <div class=\" col-sm-3\">";
                // line 19
                echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans($this->getAttribute($context["attribute"], "url", array())), "html", null, true);
                echo "</div>

                            <div class=\" col-sm-6\">";
                // line 21
                echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans($this->getAttribute($context["attribute"], "description", array())), "html", null, true);
                echo "</div>                             
                        </div>
        </div>  
                ";
            }
            // line 25
            echo "        ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['key'], $context['attribute'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
    }

    public function getTemplateName()
    {
        return "FreelanceDenverPortfolioBundle:Main:index.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  105 => 25,  98 => 21,  93 => 19,  88 => 17,  84 => 16,  79 => 15,  61 => 14,  55 => 11,  50 => 9,  45 => 7,  41 => 5,  38 => 4,  35 => 3,  29 => 2,  11 => 1,);
    }
}
