<?php

namespace Admin\AdminBundle\Entity;

use Doctrine\ORM\EntityRepository;

class VideoRepository extends EntityRepository
{
    public function allBiographies()
    {
        $query = $this
            ->getEntityManager()
            ->getRepository('AdminAdminBundle:Video')
            ->createQueryBuilder('t')
            ->select('t')
        ;
        $token = $query
            ->getQuery()
            ->getResult()
        ;
        return $token;
    }
    
    public function mediaById($id)
    {
        $query = $this
            ->getEntityManager()
            ->getRepository('ApplicationSonataMediaBundle:Media')
                ->createQueryBuilder('t')
                    ->select('t')
                        ->where('t.enabled = :enabled')
                        ->andwhere('t.category = :category')
                        ->setParameter('enabled', 1)
                        ->setParameter('category', $id)
                        ->orderBy('t.id', 'ASC')
                        
        ;
        $token = $query
            ->getQuery()
            ->getResult()
        ;
        
        return $token;
    }
}