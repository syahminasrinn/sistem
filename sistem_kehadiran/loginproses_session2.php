<?PHP
session_start();
$kod=$_POST['kod_tadika'];
$password=$_POST['password'];

if($kod && $password) 
{/* pemboleh ubah yang diisytiharkan tidak sama */
	$server='localhost';
	$userid2='root';
	$password2='';
	$dbname='tadika'; /* meletakkan nama db yang salah */
	$conn=mysql_connect("$server","$userid2","$password2");
	mysql_select_db("$dbname",$conn) or die(mysql_error());
	$query= "select *from sekolah where 
           kod_sek='$kod'AND password='$password'";
          /* pemboleh ubah yang diisytiharkan tidak sama */
    $result=mysql_query($query);

    if ($result)
    {
        if(mysql_num_rows($result) == 1)
         {
            $member = mysql_fetch_assoc($result);
            $_SESSION['SESS_KOD_TADIKA'] = $member['kod_tadika'];
            $_SESSION['SESS_PASSWORD'] = $member['password'];
            $_SESSION['SESS_USERLEVEL'] = $member['userlevel'];
            $_SESSION['SESS_NAMA_SEK'] = $member['nama_sek'];
            $userlevel= $member['userlevel'];
            if ($userlevel== "3")
            {
              header("location:analisis_admin.php");
            } /* tidak meletakkan nama file yang betul */
            elseif ($userlevel == "2")
            {
               header("location:form_isi3.php");
            }
         }
   exit();

}
else
{
    header("location:error.php");
}
}else{
    die("query failed");
    }
?>