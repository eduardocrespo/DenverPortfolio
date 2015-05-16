<?php

namespace Admin\AdminBundle\Entity;

use Doctrine\ORM\EntityRepository;

class VideoRepository extends EntityRepository
{
    public function allVideos()
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
}