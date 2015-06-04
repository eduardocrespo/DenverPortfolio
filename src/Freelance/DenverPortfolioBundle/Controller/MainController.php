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

        $homepageAboutMeCenterBiographyContent = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->allBiographies()
        ;
        // 3col slideshow on homepage
        $homepageVideoCategoryQuery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->mediaById(5)
        ;
        
        // Demo reel on homepage
        $homepageDemoCategoryQuery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->mediaById(6)
        ;
        
        // about me left slideshow on homepage
        $homepageAboutMeLeftSlideshowGallery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->mediaById(7)
        ;
        
        // about me right slideshow on homepage
        $homepageAboutMeRightSlideshowGallery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->mediaById(8)
        ;
        
        //image slideshow on homepage
        $homepageImageSlideshowCategoryQuery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
                ->mediaById(4)
        ;
        
        
        

        return $this->render(
            'FreelanceDenverPortfolioBundle:Main:index.html.twig', array(
                'homepageAboutMeCenterBiographyContent' => $homepageAboutMeCenterBiographyContent,
                'homepageVideoGallery' =>  $homepageVideoCategoryQuery,
                'homepageDemoGallery' =>  $homepageDemoCategoryQuery,
                'homepageAboutMeLeftSlideshowGallery' =>  $homepageAboutMeLeftSlideshowGallery,
                'homepageAboutMeRightSlideshowGallery' =>  $homepageAboutMeRightSlideshowGallery,
                'homepageImageSlideshowGallery' =>  $homepageImageSlideshowCategoryQuery
            )
        );
    }

}
