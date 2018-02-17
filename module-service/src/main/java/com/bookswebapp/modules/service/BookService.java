package com.bookswebapp.modules.service;

import com.bookswebapp.modules.beans.BookBean;

import java.util.List;

public interface BookService {
    List<BookBean> getAllBooks();

    BookBean getBookById(Integer bookId);

    void saveBook(BookBean book);

    void deleteBook(Integer bookId);

    void readBook(BookBean book);

    List<BookBean> searchForBook(String searchText);
}
