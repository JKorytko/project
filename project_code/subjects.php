<?php 
	include('connection.php');
	echo "<ul id=\"breadcrumbs\">
        <li><a href=\"index.php\">Home</a></li>
        <li><a href=\"list.php?info=subjects\">Subjects</a></li>
    </ul>";
	$sort="";
	if(!empty($_GET['sort'])) 
		$sort=" ORDER BY subject_title ".$_GET['sort'];
	$query="SELECT * FROM subjects".$sort;
    $result=mysql_query($query);
	
	$query1="(SELECT l.role FROM lectors l WHERE lector_login='".$_SESSION['login']."') UNION 
			 (SELECT s.role FROM students s WHERE student_email='".$_SESSION['login']."' OR parent_email='".$_SESSION['login']."')"; //Определяем роль		 
	
	$acess_result=mysql_query($query1);
	$acess= mysql_fetch_array($acess_result);
	$role=$acess['role'];
	
	if (!empty($_SESSION['login']) && $role==2){ 
	
		echo"<table border=2 cellpadding=0 cellspacing=0>";
		echo"<TR><TH> <a href=\"list.php?info=subjects&sort=ASC\"> &uarr; </a> </TH><TH>Предмет</TH> <TH><a href=\"list.php?info=subjects&sort=DESC\">&darr; </a></TH><TH>Кредиты</TH><TH>Преподаватель</TH></TR>";
		
		$querySubject="SELECT l.lector_name,s.subject_id FROM lectors l JOIN subjects s ON l.lector_login='".$_SESSION['login']."'
						 AND l.lector_id=s.lector_id";
		
		$subjectResult=mysql_query($querySubject) or die(mysql_error());
		$getSubject=mysql_fetch_array($subjectResult);
		
		
		
		while($row=mysql_fetch_array($result)){ //берем результаты из каждой строки
		
			$query2="select lector_name from lectors where lector_id=".$row['lector_id'];
			$resultlectors=mysql_query($query2);
			$rowlector=mysql_fetch_array($resultlectors);
			
	
			if ($getSubject['subject_id']==$row['subject_id']){
				
				echo"<tr><td colspan=\"3\"><a href=\"subjects_details.php?subjectId=".$row['subject_id']."\" style=\"color: red\">".$row['subject_title']."</td><td>".$row['subject_credits']."</td>
					 <td>".$rowlector['lector_name']."</td></tr>";
									
				$getSubject=mysql_fetch_array($subjectResult);
				
			}
				else {
				echo"<tr><td colspan=\"3\">".$row['subject_title']."</td><td>".$row['subject_credits']."</td>
					 <td>".$rowlector['lector_name']."</td></tr>";
					 }
		
		
		}
		echo"</table>";
	
	} elseif(!empty($_SESSION['login']) && $role==4) {//Админ
		echo"<table border=2 cellpadding=0 cellspacing=0>";
		echo"<TR><TH> <a href=\"list.php?info=subjects&sort=ASC\"> &uarr; </a> </TH><TH>Предмет</TH> <TH><a href=\"list.php?info=subjects&sort=DESC\">&darr; </a></TH><TH>Кредиты</TH><TH>Преподаватель</TH></TR>";
		while($row=mysql_fetch_array($result)){
			$query2="select lector_name from lectors where lector_id=".$row['lector_id'];
			$resultlectors=mysql_query($query2);
			$rowlector=mysql_fetch_array($resultlectors);
			echo"<tr><td colspan=\"3\"><a href=\"subjects_details.php?subjectId=".$row['subject_id']."\">".$row['subject_title']."</td><td>".$row['subject_credits']."</td><td>".$rowlector['lector_name']."</td></tr>";
		}
		echo"</table>";
	} elseif (!empty($_SESSION['login']) && $role==3){ //Студент и родители
		echo"<table border=2 cellpadding=0 cellspacing=0>";
		echo"<TR><TH> <a href=\"list.php?info=subjects&sort=ASC\"> &uarr; </a> </TH><TH>Предмет</TH> <TH><a href=\"list.php?info=subjects&sort=DESC\">&darr; </a></TH><TH>Кредиты</TH><TH>Преподаватель</TH></TR>";
		while($row=mysql_fetch_array($result)){
			$query2="select lector_name from lectors where lector_id=".$row['lector_id'];
			$resultlectors=mysql_query($query2);
			$rowlector=mysql_fetch_array($resultlectors);
			echo"<tr><td colspan=\"3\">".$row['subject_title']."</td><td>".$row['subject_credits']."</td><td>".$rowlector['lector_name']."</td></tr>";
		}
	} else{//Незалогиненный
		echo"<table border=2 cellpadding=0 cellspacing=0>";
		echo"<TR><TH>Предмет</TH><TH>Кредиты</TH><TH>Преподаватель</TH></TR>";
		while($row=mysql_fetch_array($result)){
			$query2="select lector_name from lectors where lector_id=".$row['lector_id'];
			$resultlectors=mysql_query($query2);
			$rowlector=mysql_fetch_array($resultlectors);
			echo"<tr><td>".$row['subject_title']."</td><td>".$row['subject_credits']."</td><td>".$rowlector['lector_name']."</td></tr>";
		}
		echo"</table>";
	}