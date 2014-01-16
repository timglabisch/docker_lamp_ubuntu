<?php

namespace Tg\DockerDemoBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('TgDockerDemoBundle:Default:index.html.twig', array('name' => $name));
    }
}
