package com.testspring.springweb.repo;

import com.testspring.springweb.models.Post;
import org.springframework.data.repository.CrudRepository;

public interface PostRepository extends CrudRepository<Post, Long> {
}
