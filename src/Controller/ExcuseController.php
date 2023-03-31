<?php

namespace App\Controller;

use App\Repository\ExcuseRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ExcuseController extends AbstractController
{
    #[Route('/', name: 'index')]
    public function index(ExcuseRepository $repository): Response
    {
        $excuse = $repository->getRandom();
        return $this->render('excuse/index.html.twig', [
            'excuse' => $excuse[0]
        ]);
    }

    #[Route('/{httpcode}', name: 'httpcode')]
    public function getByHttpCode(ExcuseRepository $repository, $httpcode): Response
    {
        $excuses = $repository->getByHttpcode($httpcode);
        return $this->render('excuse/listExcuse.html.twig', [
            'excuses' => $excuses
        ]);
    }
}