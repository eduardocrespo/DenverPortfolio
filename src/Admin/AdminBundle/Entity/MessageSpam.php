<?php

namespace Admin\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Email
 */
class MessageSpam
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $filter;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }
    public function getFilter($filter) {
        return $this->filter;
    }

    public function setFilter($filter) {
        $this->filter = $filter;
        return $this;
    }
    
}
