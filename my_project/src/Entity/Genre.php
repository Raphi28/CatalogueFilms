<?php

namespace App\Entity;

use App\Repository\GenreRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: GenreRepository::class)]
class Genre
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 100)]
    private ?string $nom = null;

    /**
     * @var Collection<int, Film>
     */
    #[ORM\OneToMany(targetEntity: Film::class, mappedBy: 'genre')]
    private Collection $Film;

    public function __construct()
    {
        $this->Film = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * @return Collection<int, Film>
     */
    public function getFilm(): Collection
    {
        return $this->Film;
    }

    public function addFilm(Film $film): static
    {
        if (!$this->Film->contains($film)) {
            $this->Film->add($film);
            $film->setGenre($this);
        }

        return $this;
    }

    public function removeFilm(Film $film): static
    {
        if ($this->Film->removeElement($film)) {
            // set the owning side to null (unless already changed)
            if ($film->getGenre() === $this) {
                $film->setGenre(null);
            }
        }

        return $this;
    }
}
