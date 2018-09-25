<?php
ob_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ANALISIS FORM</title>
<style type="text/css">

table,tr,th,td
{

  padding: 5px;
  color: black;
  font-family: calibri;
}
table
{
  border-collapse:collapse;
  max-width: 100%;
  max-height: 100%;
border:0px solid white; 
}
td {
  text-align: center;
   
}
tr{
  background-color:   #78cad3;
}

th{

    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    font-size: 15px;
    
}

.tble tr,th,td
{
  border: 1px solid white;
  padding: 25px;
  color: ;
}
  
<!--
body  {
    background-image: url("d.png");
    background-color: ;
}
.style1 {
        font-size: 36px
}
.style2 {font-size: 18px; }
.style3 {       font-size: 14px
}
.style4 {font-size: 24px; }
-->
</style></head>

<body>
<table width="1224"  border="0" align="center" bgcolor="#">
  <tr>
    <td bgcolor=" #ffffb3"><p></p>
    <p>&nbsp;</p>
    <h1 align="center" class="style1" color="red">ANALISIS KEHADIRAN PELAJAR TAHUN 2018 </h1>
    <h1 align="center" class="style1" color="red">TADIKA JOHOR BAHRU </h1>
    <div id="tbl1">
      <div align="center">
      <table width="1023" border="1" bordercolor="#CC0000">
          <tr>
            <td rowspan="2">BIL</td>
            <td width="190"rowspan="2">SEKOLAH</td>
            <td width="160"colspan="11" style="text-align: center">PERATUS (%) KEHADIRAN MURID TAHUN 2014</td>

            <td width="119"rowspan="2">PERATUS TAHUNAN (%) </td>
          </tr>
          <tr>
            <td>JAN</td>
            <td>FEB</td>
            <td>MAC</td>
             <td>APR</td>
            <td>MEI</td>
            <td>JUN</td>
             <td>JUL</td>
            <td>OGOS</td>
            <td>SEPT</td>
             <td>OKT</td>
            <td>NOV</td>
          </tr>

           <?php
require_once('info.php');

$con1 = mysql_connect($dbhostname, $dbusername, $dbpassword);

if (!$con1)
        die (mysql_error());

mysql_select_db($databasename, $con1);
$query_string = "SELECT * FROM peratusan_bulanan2 ";
$rs1 = mysql_query($query_string, $con1) or die(mysql_error());
$bil=1;
while ($row_rsl = mysql_fetch_assoc($rs1)){
        echo '<tr>';
        echo '<td>' . $bil . '</td>';
        echo '<td>' . $row_rsl['kod_tadika'] . '</td>';
        echo '<td>' . $row_rsl['jan'] . '</td>';
        echo '<td>' . $row_rsl['feb'] . '</td>';
        echo '<td>' . $row_rsl['mac'] . '</td>';
        echo '<td>' . $row_rsl['apr'] . '</td>';
		echo '<td>' . $row_rsl['may'] . '</td>';
        echo '<td>' . $row_rsl['jun'] . '</td>';
        echo '<td>' . $row_rsl['jul'] . '</td>';
        echo '<td>' . $row_rsl['ogos'] . '</td>';
        echo '<td>' . $row_rsl['sept'] . '</td>';
        echo '<td>' . $row_rsl['okt'] . '</td>';
        echo '<td>' . $row_rsl['nov'] . '</td>';
        echo '<td>' . $row_rsl['peratusanB'] . '</td>';
        $bil++;


        echo '</tr>';

        }

mysql_free_result($rs1);
mysql_close($con1);

?>

      </table>
       <p></p>
       <p></p>
       <p></p>
      </div>
    </div>

  </tr>
</table>
<h1 align="center" class="style1">&nbsp;</h1>
</body>
</html>
<?php
ob_flush();
?>