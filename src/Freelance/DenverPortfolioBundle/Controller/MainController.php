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
use Application\Sonata\MediaBundle\Entity\Media;

class MainController extends Controller {

    public function HomeAction() {

        $videoContentQuery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->allVideos()
        ;
        // 3col slideshow on homepage
        $homepageVideoCategoryQuery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->mediaById(5)
        ;
        
        //image slideshow on homepage
        $homepageImageSlideshowCategoryQuery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->mediaById(4)
        ;
        

        return $this->render(
            'FreelanceDenverPortfolioBundle:Main:index.html.twig', array(
                'homepageVideoContent' => $videoContentQuery,
                'homepageVideoGallery' =>  $homepageVideoCategoryQuery,
                'homepageImageSlideshowGallery' =>  $homepageImageSlideshowCategoryQuery
            )
        );
    }

}
