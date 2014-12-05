function view ($plantilla,$variables = array()){
extract($variables);
requiere('views/'.$plantilla'.tpl.php');
}
function controller ($nombre){
if(empty($nombre))
$nombre='home';
$archivo = "controler/$nombre.php";
if (file_exists($archivo))
require($archivo)
else
echo "error archivos no encontrados"
}