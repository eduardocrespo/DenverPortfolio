<?php

namespace Freelance\DenverPortfolioBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Form\FormBuilder;
use Doctrine\ORM\EntityRepository;
use Symfony\Component\HttpFoundation\Session\Session;
use Admin\AdminBundle\Entity\Video;

class MainController extends Controller {

    public function HomeAction() {

        $videoQuery = $this
                ->getDoctrine()
                ->getRepository('AdminAdminBundle:Video')
                ->allVideos()
        ;

        return $this->render(
                        'FreelanceDenverPortfolioBundle:Main:index.html.twig', array(
                    'videoattributes' => $videoQuery,
                        )
        );
    }

}
