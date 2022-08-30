package com.halloworld.hallo.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hallo")
public class HalloController {
	
	@GetMapping
	
	public String hallo(){
		
		return "Hallo Generation!";
	}
	
	@GetMapping("/bsm")
	
	public String bsm () {
		return "Mentalidades\r\n"
				+"Orientação ao futuro\r\n"
				+"Responsabilidade pessoal\r\n"
				+"Mentalidade de crescimento\r\n"
				+"Persistência\r\n"
				+"\r\n"
				+"Habilidades\r\n"
				+"Trabalho em equipe\r\n"
				+"Orientação ao detalhe\r\n"
				+"Pró-atividade\r\n"
				+"Comunicação";
	}
	@GetMapping("/Objetivos")
	
	public String objetivos () {
		return "Objetivos da semana\r\n"
				+"Paticar mais Spring-Boot\r\n"
				+"Aplicar o que aprendi no meu blog pessoal\r\n"
				+"Melhorar a minha gestão de tempo";
	}

}
