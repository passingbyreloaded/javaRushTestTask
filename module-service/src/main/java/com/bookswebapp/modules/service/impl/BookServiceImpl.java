package com.bookswebapp.modules.service.impl;

import com.bookswebapp.modules.beans.BookBean;
import com.bookswebapp.modules.dao.BookDAO;
import com.bookswebapp.modules.entities.Book;
import com.bookswebapp.modules.service.BookService;
import com.bookswebapp.modules.service.EntityBeanConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BookServiceImpl implements BookService{

    @Autowired
    private BookDAO bookDao;

    @Autowired
    private EntityBeanConverter converter;

    @Override
    public List<BookBean> getAllBooks() {
        Iterable<Book> books = bookDao.findAll();
        List<BookBean> beanList = converter.convertToBeanList(books, BookBean.class);

        return beanList;
    }

    @Override
    public BookBean getBookById(Integer bookId) {
        Book book = bookDao.findOne(bookId);
        BookBean bean = converter.convertToBean(book, BookBean.class);

        return bean;
    }

    @Override
    public void saveBook(BookBean book) {
        Book bookEntity = converter.convertToEntity(book, Book.class);
        bookDao.save(bookEntity);
    }

    @Override
    public void deleteBook(Integer bookId) {
        bookDao.delete(bookId);
    }

    @Override
    public void readBook(BookBean book) {
        Book bookEntity = converter.convertToEntity(book, Book.class);
        bookDao.save(bookEntity);
    }

    @Override
    public List<BookBean> searchForBook(String searchText) {
        List<Book> results = bookDao.search("%"+searchText+"%");
        List<BookBean> beanList = converter.convertToBeanList(results, BookBean.class);

        return beanList;
    }
}

