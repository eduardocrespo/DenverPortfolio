<?php

namespace Admin\AdminBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Email
 */
class Email
{
    /**
     * @var integer
     */
    private $id;

    /**
     * @var string
     */
    private $name;

    /**
     * @var string
     */
    private $email;

    /**
     * @var string
     */
    private $message;


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
     * Set name
     *
     * @param string $name
     * @return Email
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Email
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set message
     *
     * @param string $message
     * @return Email
     */
    public function setMessage($message)
    {
        $this->message = $message;

        return $this;
    }

    /**
     * Get message
     *
     * @return string 
     */
    public function getMessage()
    {
        return $this->message;
    }
    
    
    public function messageSpam($message, $type, $filters, $index){
        // uses inverse logic does contain to compare against, 'does not' contain type can be added later.
        if($type == 'does contain'){
            // spam count is initally zero, if message contains a blacklist keyword we will increase this by one.
            $spamCount = 0;
            // go through each blacklist keyword and check to see if it exists in message.
            foreach($filters as $filter){
                if (strpos($message, $filter->$index()) !== false) {
                    //filter exists in message increase counter by 1
                    $spamCount += 1;
                }else{
                    // filter does not exist in message, increase by nothing
                     $spamCount += 0;
                }         
            }
            if($spamCount == 0){
                // message does not contain spam in $spamCount, so return false
                return false;
            }else{
                // message does contain spam in $spamCount, so return true
                return true;
                
            }
        }
     
    }
    
}
