<?php

/* FreelanceDenverPortfolioBundle::base.html.twig */
class __TwigTemplate_a9a55b446b4784dab68db3d03140452d13dedfabe23a7945c2342ea6e96c0feb extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'notifications' => array($this, 'block_notifications'),
            'body' => array($this, 'block_body'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html>";
        // line 2
        ob_start();
        // line 3
        echo "    <head>   
        <title>";
        // line 4
        $this->displayBlock('title', $context, $blocks);
        echo " | Portfolio</title>
        ";
        // line 5
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "3f4920f_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_3f4920f_0") : $this->env->getExtension('assets')->getAssetUrl("_controller/css/3f4920f_style_1.css");
            // line 6
            echo "            <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/freelancedenverportfolio/css/style.css"), "html", null, true);
            echo "\" />
        ";
        } else {
            // asset "3f4920f"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_3f4920f") : $this->env->getExtension('assets')->getAssetUrl("_controller/css/3f4920f.css");
            echo "            <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/freelancedenverportfolio/css/style.css"), "html", null, true);
            echo "\" />
        ";
        }
        unset($context["asset_url"]);
        // line 8
        echo "        ";
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "7e2507e_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_7e2507e_0") : $this->env->getExtension('assets')->getAssetUrl("_controller/css/7e2507e_bootstrap-theme.min_1.css");
            // line 9
            echo "            <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/freelancedenverportfolio/css/bootstrap-theme.min.css"), "html", null, true);
            echo "\" />
        ";
        } else {
            // asset "7e2507e"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_7e2507e") : $this->env->getExtension('assets')->getAssetUrl("_controller/css/7e2507e.css");
            echo "            <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/freelancedenverportfolio/css/bootstrap-theme.min.css"), "html", null, true);
            echo "\" />
        ";
        }
        unset($context["asset_url"]);
        // line 10
        echo "       
        ";
        // line 11
        if (isset($context['assetic']['debug']) && $context['assetic']['debug']) {
            // asset "e39f08d_0"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_e39f08d_0") : $this->env->getExtension('assets')->getAssetUrl("_controller/css/e39f08d_bootstrap_1.css");
            // line 12
            echo "            <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/freelancedenverportfolio/css/bootstrap.css"), "html", null, true);
            echo "\" />
        ";
        } else {
            // asset "e39f08d"
            $context["asset_url"] = isset($context['assetic']['use_controller']) && $context['assetic']['use_controller'] ? $this->env->getExtension('routing')->getPath("_assetic_e39f08d") : $this->env->getExtension('assets')->getAssetUrl("_controller/css/e39f08d.css");
            echo "            <link rel=\"stylesheet\" href=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('assets')->getAssetUrl("bundles/freelancedenverportfolio/css/bootstrap.css"), "html", null, true);
            echo "\" />
        ";
        }
        unset($context["asset_url"]);
        // line 14
        echo "      
    </head>
    <body>
        <div id=\"content\">
                ";
        // line 18
        $this->displayBlock('notifications', $context, $blocks);
        // line 39
        echo "        </div>
\t";
        // line 40
        $this->displayBlock('body', $context, $blocks);
        // line 41
        echo "    </body>
";
        echo trim(preg_replace('/>\s+</', '><', ob_get_clean()));
        // line 42
        echo "</html>
";
    }

    // line 4
    public function block_title($context, array $blocks = array())
    {
    }

    // line 18
    public function block_notifications($context, array $blocks = array())
    {
        // line 19
        echo "                    ";
        if ((array_key_exists("error", $context) &&  !(null === (isset($context["error"]) ? $context["error"] : $this->getContext($context, "error"))))) {
            // line 20
            echo "                        <div class=\"message\">
                            ";
            // line 21
            echo twig_escape_filter($this->env, $this->env->getExtension('translator')->trans($this->getAttribute((isset($context["error"]) ? $context["error"] : $this->getContext($context, "error")), "message", array())), "html", null, true);
            echo "
                        </div>
                    ";
        }
        // line 24
        echo "
                    ";
        // line 25
        if ((array_key_exists("notice", $context) &&  !(null === (isset($context["notice"]) ? $context["notice"] : $this->getContext($context, "notice"))))) {
            // line 26
            echo "                        <div class=\"message\">
                            ";
            // line 27
            echo twig_escape_filter($this->env, (isset($context["notice"]) ? $context["notice"] : $this->getContext($context, "notice")), "html", null, true);
            echo "
                        </div>
                    ";
        }
        // line 30
        echo "
                    ";
        // line 31
        if (($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["app"]) ? $context["app"] : null), "session", array(), "any", false, true), "flashbag", array(), "any", false, true), "has", array(0 => "notice"), "method", true, true) &&  !(null === $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["app"]) ? $context["app"] : $this->getContext($context, "app")), "session", array()), "flashbag", array()), "has", array(0 => "notice"), "method")))) {
            // line 32
            echo "                            ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["app"]) ? $context["app"] : $this->getContext($context, "app")), "session", array()), "flashbag", array()), "get", array(0 => "notice"), "method"));
            foreach ($context['_seq'] as $context["_key"] => $context["flashMessage"]) {
                // line 33
                echo "                                <div class=\"message\">
                                    ";
                // line 34
                echo twig_escape_filter($this->env, $context["flashMessage"], "html", null, true);
                echo "
                                </div>
                            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['flashMessage'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 37
            echo "                    ";
        }
        // line 38
        echo "                ";
    }

    // line 40
    public function block_body($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "FreelanceDenverPortfolioBundle::base.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  177 => 40,  173 => 38,  170 => 37,  161 => 34,  158 => 33,  153 => 32,  151 => 31,  148 => 30,  142 => 27,  139 => 26,  137 => 25,  134 => 24,  128 => 21,  125 => 20,  122 => 19,  119 => 18,  114 => 4,  109 => 42,  105 => 41,  103 => 40,  100 => 39,  98 => 18,  92 => 14,  78 => 12,  74 => 11,  71 => 10,  57 => 9,  52 => 8,  38 => 6,  34 => 5,  30 => 4,  27 => 3,  25 => 2,  22 => 1,);
    }
}
