$Scale 42

$ModelName "ValeyardStudios\int\details\Doors.mdl"

$BodyGroup "Door"
{
    studio "Door.smd"
}

$CDMaterials "valeyardstudios/ext"

$SurfaceProp "default"

$Contents "solid"

$CollisionModel "Door_Phys.smd"
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

$animation 1 "anims\move.smd" frame 0 0 subtract neutral 0 weightlist switch
$animation 2 "anims\move.smd" frame 1 1 subtract neutral 0 weightlist switch
$animation 3 "anims\move.smd" frame 2 2 subtract neutral 0 weightlist switch
$animation 4 "anims\move.smd" frame 3 3 subtract neutral 0 weightlist switch

$sequence switch { 1 2 3 4 blendwidth 4 blend switch 0 1 weightlist switch delta autoplay }

