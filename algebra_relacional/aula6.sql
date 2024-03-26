/* π Fname, Dname (EMPLOYEE ⨝ Dno = Dnumber DEPARTMENT) */
/* π (ALUNO ⨝ codcurso = codcurso CURSO)*/ /* Estrangeira e Primaria*/

/* 1) π Fname, Dname (EMPLOYEE Dno = Dnumber (DEPARTMENT)) */
/* 2) π EMPLOYEE ⨝ Dno = Dnumber (σ Dname = 'Administracao') DEPARTMENT */
/* 3) π Pname (PROJECT ⨝ Dnum = Dnumber DEPARTMENT)*/
/* 4) π WORKS_ON ⨝ fcpf = cpf EMPLOYEE */
/* 5) π (σ EMPLOYEE ⨝ DEPARTMENT
              dnr = Dnumber )
	          Pnome, Endereco	*/	 
 PROJECT ⨝ DEPARTMENT		 
    Dnum = Dnumber
	Proj ≥ Dep ⨝ EMPLOYEE	
   cpfGerente = cpf	
	π (σ (PROJ ≥ DEP ≥ FUNC) 
	      PROJ_LOC = 'maua'
	   projnumero, dnumero, dnome, endereco, dalanos)	
