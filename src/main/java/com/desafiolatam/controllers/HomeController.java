package com.desafiolatam.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.desafiolatam.models.Auto;
import com.desafiolatam.models.Usuario;
import com.desafiolatam.sevices.AutoService;
import com.desafiolatam.sevices.ClienteService;
import com.desafiolatam.sevices.CompraService;
import com.desafiolatam.sevices.UsuarioService;

@Controller
public class HomeController {
	@Autowired
	UsuarioService usuarioService;
	
	@Autowired
	AutoService autoService;
	
	@Autowired
	ClienteService clienteService;
	
	@Autowired
	CompraService compraservice;
	
	@RequestMapping("/home")
	public String home(Model model, HttpSession session) {
		List<Auto> listaAutos =  autoService.findAll();
		String usuarioEmail = (String) session.getAttribute("usuarioEmail");
		Usuario usuario =  usuarioService.findByEmail(usuarioEmail);
		model.addAttribute("listaAutos", listaAutos);
		model.addAttribute("auto", new Auto());
        model.addAttribute("usuario", usuario);
        
		model.addAttribute("listaClientes", clienteService.findAll());
		model.addAttribute("listaCompras", compraservice.findAll());
		return "home.jsp";
	}
}
