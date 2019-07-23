<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
<style >

        fieldset {
    
    border: 1px #0568CD solid;
    margin-right:40%;
                 }

         legend {
              font-weight: bold;
              color: #40E0D0;
                }

		input{
			
			margin-top: 3%;
			padding-right: 30px;
			margin-left: 60px;

		}
		label{
			
			margin-top: 3%;
			margin-left: 60px;
			display: inline-block;
			width: 200px;
			font-style: italic;
			
		}
		select{
			
			margin-top: 3%;
			margin-left: 60px;
			
		}
		
		div{
			border: 3px #0568CD solid;
			display: inline-block;
			padding:15px;
			margin-left: 3%;
		}
		
		form .requis {
             color: #c00;
         }
		

	</style>
</head>
<body>
<form method="post" >
    
    <fieldset>
    <legend>Inscription</legend>
    
    <label for="nom">Entrez votre nom<span class="requis">*</span> : </label>
	<input type="text" id="nom" name="nom" required >
	<br/>


	<label for="prenom">Entrez votre prénom<span class="requis">*</span> : </label>
	<input type="text" id="prenom" name="prenom" required><br/>


	<label for="dateN">Entrez votre date de naissance<span class="requis">*</span>:</label>
	<input type="date" name="date" id="dateN" required><br/>

	<label for="Email">Email<span class="requis">*</span> :</label>
	<input type="email" name="email" id="Email" required><br/>

	<label for="Adresse">Entrez votre Adresse<span class="requis">*</span> :</label>
	<input type="text" name="adresse" id="Adresse" maxlength="100" required><br/>

	<label for="filière">Filière<span class="requis">*</span> :</label>
	<select name="filiere" >
       <option value="gi" >gi</option>
       <option value="gtr" selected>gtr</option>
       <option value="gc">gc</option>
       <option value="ge">ge</option>
   </select><br/>

   <label for="Niveau">Niveau<span class="requis">*</span> :</label>
   <input type="radio" name="niveau" id="Niveau" value="A1" >A1
   <input type="radio" name="niveau" id="Niveau" value="A0" >A0<br/>

   <label for="Langages">Langages maitrisés<span class="requis">*</span> : </label>
   <input type="checkbox" name="Langages" value="html">html
   <input type="checkbox" name="Langages" value="css">css
   <input type="checkbox" name="Langages" value="js">js
   <input type="checkbox" name="Langages" value="php">php<br/>

   <label for="exp">Nombre d'années d'expérience<span class="requis">*</span> :</label>
   <input type="number" name="exp" required><br/>

   <input type="submit" value="Envoyer" id="envoyer">
   
                
         </fieldset>
        </form>
</body>
</html>