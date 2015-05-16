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
    private $description;

    /**
     * @var text
     */
    private $title;

    /**
     * @var string
     */
    private $url;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Product
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set quantity
     *
     * @param integer $quantity
     * @return Product
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get quantity
     *
     * @return integer 
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set num
     *
     * @param string $num
     * @return Product
     */
    public function setUrl($url)
    {
        $this->url = $url;

        return $this;
    }

    /**
     * Get num
     *
     * @return string 
     */
    public function getUrl()
    {
        return $this->url;
    }
}
