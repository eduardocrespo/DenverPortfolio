<?php

namespace Admin\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Product
 */
class Video
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $biography;



    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }
    public function getBiography() {
        return $this->biography;
    }

    public function setBiography($biography) {
        $this->biography = $biography;
        return $this;
    }
}
