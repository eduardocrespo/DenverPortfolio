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
use Admin\AdminBundle\Entity\Email;
use Application\Sonata\MediaBundle\Entity\Media;


class MainController extends Controller {

    public function HomeAction(Request $request) {

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
        
        //email form
        $em = $this->getDoctrine()->getManager();
        $er = $this->getDoctrine()
                ->getRepository('AdminAdminBundle:Email');
        //create new instance of phone
        $email = new Email();
        $emailForm = $this->createFormBuilder($email)
           ->add(
                'name', 'text', array(
                    'label' => 'Name*',
                    'attr' => array(
                        'style' => 'width: 100%',
                        'onclick' => "clickTrigger(this, 'NAME')",
                        'onblur' => "blurTrigger(this,'NAME')",
                        'class' => 'homepageformemail emailformname',
                        'value' => "NAME"
                    )
                )
            )
            ->add(
                'email', 'text', array(
                    'label' => 'Email*',
                    'attr' => array(
                        'style' => 'width: 100%',
                        'onclick' => "clickTrigger(this, 'EMAIL')",
                        'onblur' => "blurTrigger(this,'EMAIL')",
                        'class' => 'homepageformemail emailformemail',
                        'value' => "EMAIL"
                    )
                )
            )
            ->add(
                'message', 'textarea', array(
                    'label' => 'Message*',
                    'data' => 'MESSAGE',
                    'attr' => array(
                        'style' => 'width: 100%',
                        'onclick' => "clickTrigger(this, 'MESSAGE')",
                        'onblur' => "blurTrigger(this,'MESSAGE')",
                        'class' => 'homepageformemail emailformmessage',
                        'rows' => '8'
                    )
                )
            )
           
            ->getForm()
        ;
        
        return $this->render(
            'FreelanceDenverPortfolioBundle:Main:index.html.twig', array(
                'homepageAboutMeCenterBiographyContent' => $homepageAboutMeCenterBiographyContent,
                'homepageVideoGallery' =>  $homepageVideoCategoryQuery,
                'homepageDemoGallery' =>  $homepageDemoCategoryQuery,
                'homepageAboutMeLeftSlideshowGallery' =>  $homepageAboutMeLeftSlideshowGallery,
                'homepageAboutMeRightSlideshowGallery' =>  $homepageAboutMeRightSlideshowGallery,
                'homepageImageSlideshowGallery' =>  $homepageImageSlideshowCategoryQuery,
                'emailForm' => $emailForm->createView()
            )
        );   
    }
    
    public function SendEmailAction(Request $request){
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

                // about me right s$emailFormlideshow on homepage
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
        $em = $this->getDoctrine()->getManager();
        $er = $this->getDoctrine()
                ->getRepository('AdminAdminBundle:Email');
        //create new instance of phone
        $email = new Email();
        $emailForm = $this->createFormBuilder($email)
           ->add(
                'name', 'text', array(
                    'label' => 'Name*',
                    'attr' => array(
                        'style' => 'width: 100%',
                        'onclick' => "clickTrigger(this, 'NAME')",
                        'onblur' => "blurTrigger(this,'NAME')",
                        'class' => 'homepageformemail emailformname',
                    )
                )
            )
            ->add(
                'email', 'text', array(
                    'label' => 'Email*',
                    'attr' => array(
                        'style' => 'width: 100%',
                        'onclick' => "clickTrigger(this, 'EMAIL')",
                        'onblur' => "blurTrigger(this,'EMAIL')",
                        'class' => 'homepageformemail emailformemail',
                    )
                )
            )
            ->add(
                'message', 'textarea', array(
                    'label' => 'Message*',
                    'data' => "MESSAGE",
                    'attr' => array(
                        'style' => 'width: 100%',
                        'onclick' => "clickTrigger(this, 'MESSAGE')",
                        'onblur' => "blurTrigger(this,'MESSAGE')",
                        'class' => 'homepageformemail emailformmessage',
                        'rows' => '4'
                    )
                )
            )
           
            ->getForm()
        ;
        // if email form is posted
        if($request->isMethod('POST')) {
            $emailForm->bind($request);
            $emailData = $emailForm->getData();
            //if form passes validation.yml constraints then persist data to database;
            if ($emailForm->isValid()) {                
                $em = $this
                    ->getDoctrine()
                    ->getManager()
                ;
                $em->persist($emailData);
                $em->flush();
                $session = new Session();
                $session
                    ->getFlashBag()
                    ->add('notice', 'Email Sent')
                ;
                
                $message = \Swift_Message::newInstance()
                    ->setSubject('You have a new email from DenverJamesHarward.com')
                    ->setFrom('denver@denverharward.com')
                    ->setTo('denverharward@gmail.com')
                    ->setBody(
                            $this->renderView(
                                'FreelanceDenverPortfolioBundle:Email:HomepageContactEmail.html.twig',
                                    array(
                                        'name' => $emailData->getName(),
                                        'email' => $emailData->getEmail(),
                                        'message' => $emailData->getMessage()
                                    )
                            ),
                            'text/html'
                        )
                    ->addPart(
                        $this->renderView(
                            'FreelanceDenverPortfolioBundle:Email:HomepageContactEmail.html.twig',
                                array(
                                    'name' => $emailData->getName(),
                                    'email' => $emailData->getEmail(),
                                    'message' => $emailData->getMessage()
                                )
                        ),
                        'text/plain'
                    )
                ;
                
                $this->get('mailer')->send($message);
                
                return $this->redirect(
                    $this->generateUrl("freelance_denver_portfolio_homepage"
                    ). '#contact'
                );

            }
            return $this->render(
                'FreelanceDenverPortfolioBundle:Main:index.html.twig', array(
                    'homepageAboutMeCenterBiographyContent' => $homepageAboutMeCenterBiographyContent,
                    'homepageVideoGallery' =>  $homepageVideoCategoryQuery,
                    'homepageDemoGallery' =>  $homepageDemoCategoryQuery,
                    'homepageAboutMeLeftSlideshowGallery' =>  $homepageAboutMeLeftSlideshowGallery,
                    'homepageAboutMeRightSlideshowGallery' =>  $homepageAboutMeRightSlideshowGallery,
                    'homepageImageSlideshowGallery' =>  $homepageImageSlideshowCategoryQuery,
                    'emailForm' => $emailForm->createView()
                )
            );
        }
        return $this->redirect(
                    $this->generateUrl("freelance_denver_portfolio_homepage"
                    ). '#contact'
                );
    }
}
