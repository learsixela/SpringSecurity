package com.desafiolatam.api;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.desafiolatam.models.Auto;
import com.desafiolatam.models.Cliente;
import com.desafiolatam.sevices.AutoService;
import com.desafiolatam.sevices.ClienteService;

@RestController
@RequestMapping("/api")
public class ApiRestController {
	@Autowired
	AutoService autoService;
	@Autowired
	ClienteService cService;
	//POST; GET;PUT;DELETE
	
	@RequestMapping(value="/auto/obtener",method = RequestMethod.GET)
	public List<Auto> obtener(HttpServletRequest request){
		List<Auto> listaAutos =  autoService.findAll();
		return listaAutos;
	}
	
	@GetMapping("/auto/get")
	public List<Auto> getAuto(HttpServletRequest request){
		List<Auto> listaAutos =  autoService.findAll();
		return listaAutos;
	}
	
	@RequestMapping(value = "/cliente/get", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Cliente> getCliente(HttpServletRequest request){
		List<Cliente> clientes = cService.findAll();
	
		return clientes;
	}
}
