package com.bookswebapp.modules.dao;

import com.bookswebapp.modules.entities.Book;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookDAO extends CrudRepository<Book, Integer> {

    @Query("from Book b where b.title like ?1")
    List<Book> search(String searchText);

}
