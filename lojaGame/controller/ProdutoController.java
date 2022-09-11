package com.generation.lojaGame.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.generation.lojaGame.model.Produto;
import com.generation.lojaGame.repository.ProdutoRepository;



@RestController
@RequestMapping("/produtos")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class ProdutoController {

	@Autowired
	private ProdutoRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Produto>> getAll()
	{
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Produto> getById(@PathVariable Long id)
	{
		
	return repository.findById(id)
	.map(resposta -> ResponseEntity.ok(resposta))
	.orElse(ResponseEntity.status(HttpStatus.NOT_FOUND).build());
	
	}
	
	@GetMapping("/nome/{nome}")
	public ResponseEntity<List<Produto>> getByTitutlo(@PathVariable String nome) {
		return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(nome));
	}
	
	@PostMapping
	public ResponseEntity<Produto> post (@Valid @RequestBody Produto produt)
	{
		return ResponseEntity.status(HttpStatus.CREATED)
				.body(repository.save(produt));
	}
	
	@PutMapping
	public ResponseEntity<Produto> put (@Valid @RequestBody Produto produt)
	{
		return repository.findById(produt.getId())
				.map(resposta -> ResponseEntity.status(HttpStatus.OK)
				.body (repository.save(produt)))
				.orElse (ResponseEntity.status(HttpStatus.NOT_FOUND).build());
	}
	
	@DeleteMapping("/{id}")
	public void delete (@PathVariable Long id) {
		Optional<Produto> produt = repository.findById(id);
		if (produt.isEmpty())
			throw new ResponseStatusException(HttpStatus.NOT_FOUND);
		repository.deleteById(id);
	}

}
