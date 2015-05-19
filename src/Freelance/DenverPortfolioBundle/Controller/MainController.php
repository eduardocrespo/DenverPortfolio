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

        $videoQuery = $this
            ->getDoctrine()
            ->getRepository('AdminAdminBundle:Video')
            ->allVideos()
        ;
        // 3col slideshow on homepage
        $homepageVideoCategoryQuery = $this
            ->getDoctrine()
            ->getRepository('ApplicationSonataMediaBundle:Media')
            ->createQueryBuilder('t')
                ->select('t')
                ->where('t.enabled = :enabled')
                ->andwhere('t.category = :category')
                ->setParameter('enabled', 1)
                ->setParameter('category', 5)
                ->orderBy('t.id', 'ASC')
                    ->getQuery()
                    ->getResult()
        ;
        
        //image slideshow on homepage
        $homepageImageSlideshowCategoryQuery = $this
            ->getDoctrine()
            ->getRepository('ApplicationSonataMediaBundle:Media')
            ->createQueryBuilder('t')
                ->select('t')
                ->where('t.enabled = :enabled')
                ->andwhere('t.category = :category')
                ->setParameter('enabled', 1)
                ->setParameter('category', 4)
                ->orderBy('t.id', 'ASC')
                    ->getQuery()
                    ->getResult()
        ;
        

        return $this->render(
                        'FreelanceDenverPortfolioBundle:Main:index.html.twig', array(
                    'videoattributes' => $videoQuery,
                    'homepageVideoGallery' =>  $homepageVideoCategoryQuery,
                    'homepageImageSlideshowGallery' =>  $homepageImageSlideshowCategoryQuery,
                        )
        );
    }

}
