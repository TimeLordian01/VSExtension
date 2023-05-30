$Scale 42

$ModelName "ValeyardStudios\int\main\pillars.mdl"

$BodyGroup "pillars"
{
	studio "pillars.smd"
}

$CDMaterials "valeyardstudios/int/main", "valeyardstudios/int/main/off"

$SurfaceProp "metal"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$Sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
}

$texturegroup skinfamilies
{
	{ "lit"    "pillars"   }
	{ "unlit"    "pillars - unlit" }
	{ "damaged"    "pillars - damaged" }
}