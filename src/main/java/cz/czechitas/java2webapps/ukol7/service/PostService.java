package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.time.LocalDate;


@Service
public class PostService {

    @Autowired
    private PostRepository postRepository;

    public Page<Post> list() {
        return postRepository.findAllByAndPublishedIsNotNullAndPublishedBeforeOrderByPublishedDesc(PageRequest.of(0, 20), LocalDate.now());
    }

    public Post singlePost(String slug) {
        return postRepository.findPostBySlug(slug);
    }
}
