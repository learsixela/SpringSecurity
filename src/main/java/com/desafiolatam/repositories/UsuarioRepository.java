package com.desafiolatam.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.desafiolatam.models.Usuario;

@Repository
public interface UsuarioRepository extends CrudRepository<Usuario,Long>{
	List<Usuario> findAll();
	Usuario findByCorreo(String correo);
}
