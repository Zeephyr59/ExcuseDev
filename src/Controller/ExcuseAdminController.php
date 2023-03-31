<?php

namespace App\Controller;

use App\Entity\Excuse;
use App\Form\ExcuseType;
use App\Repository\ExcuseRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ExcuseAdminController extends AbstractController
{
    #[Route('/admin/excuses', name: 'admin_excuses')]
    public function index(ExcuseRepository $repository): Response
    {
        $excuses = $repository->findAll();
        return $this->render('excuse_admin/index.html.twig', [
            'excuses' => $excuses
        ]);
    }

    #[Route('/admin/createExcuse', name: 'admin_create_excuse')]
    #[Route('/admin/updateExcuse/{id}', name: 'admin_update_excuse')]
    public function updateAndCreateExcuse(Excuse $excuse = null, Request $request, EntityManagerInterface $manager): Response
    {
        if(!$excuse) { $excuse = new Excuse;}

        $form = $this->createForm(ExcuseType::class, $excuse);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $isModif = $excuse->getId() !== null;
            $manager->persist($excuse);
            $manager->flush();
            $this->addFlash("success", ($isModif) ? "La modification a été effectuée" : "L'ajout a été effectuée");
            return $this->redirectToRoute(
                'admin_excuses');
        }

        return $this->render('excuse_admin/updateExcuse.html.twig', [
            "form" => $form->createView()
        ]);
    }
}