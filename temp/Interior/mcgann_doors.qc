$ModelName "ValeyardStudios\mcgann\96IntDoors.mdl"

$BodyGroup "IntDoors"
{
    studio "IntDoors.smd"
}

$CDMaterials "valeyardstudios/mcgann"

$SurfaceProp "wood"

$Contents "solid"

$CollisionModel "Door_Phys_McGann.smd"
{
    $mass 2000
    $inertia 1
    $damping 0
    $rotdamping 0
    $concave
}


$sequence "idle" "anims\idle.smd" {
    fps 30
}

$animation "neutral" "anims\idle.smd" {
    fps 30
}

$weightlist "switch" {
      "Root" 1
      "RDoor" 1
      "LDoor" 1
}

$animation 1 "anims\move1996.smd" frame 0 0 subtract neutral 0 weightlist switch
$animation 2 "anims\move1996.smd" frame 1 1 subtract neutral 0 weightlist switch
$animation 3 "anims\move1996.smd" frame 2 2 subtract neutral 0 weightlist switch
$animation 4 "anims\move1996.smd" frame 3 3 subtract neutral 0 weightlist switch

$sequence switch { 1 2 3 4 blendwidth 4 blend switch 0 1 weightlist switch delta autoplay }

