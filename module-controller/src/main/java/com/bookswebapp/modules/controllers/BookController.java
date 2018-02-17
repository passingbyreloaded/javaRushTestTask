package com.bookswebapp.modules.controllers;

import com.bookswebapp.modules.beans.BookBean;
import com.bookswebapp.modules.entities.Book;
import com.bookswebapp.modules.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
class BookController {

    @Autowired
    private BookService bookService;


    @RequestMapping(value = {"/{type}","/books","/bookList.html"}, method = RequestMethod.GET)
    public ModelAndView showBooks(@PathVariable Map<String, String> pathVariablesMap, HttpServletRequest req) {

        PagedListHolder<BookBean> booksList = null;
        String type = pathVariablesMap.get("type");
        if (null == type) {
            // First Request, Return first set of list
            List<BookBean> books = bookService.getAllBooks();
            booksList = new PagedListHolder();
            booksList.setSource(books);
            booksList.setPageSize(10);
            req.getSession().setAttribute("booksList", booksList);

        } else if ("next".equals(type)) {
            // Return next set of list
            booksList = (PagedListHolder<BookBean>) req.getSession().getAttribute("booksList");
            booksList.nextPage();

        } else if ("prev".equals(type)) {
            // Return previous set of list
            booksList = (PagedListHolder<BookBean>) req.getSession().getAttribute("booksList");
            booksList.previousPage();

        } else {
            // Return specific index set of list
            System.out.println("type:" + type);
            booksList = (PagedListHolder<BookBean>) req.getSession().getAttribute("booksList");
            int pageNum = Integer.parseInt(type);
            booksList.setPage(pageNum);
        }
        ModelAndView modelAndView = new ModelAndView("books");
        return modelAndView;
    }

    @RequestMapping("/update-book.html")
    public ModelAndView updateBook(@RequestParam(name = "book_id") Integer bookId) {
        ModelAndView modelAndView = new ModelAndView("books");

        BookBean book = bookService.getBookById(bookId);
        modelAndView.addObject("book", book);

        return modelAndView;
    }

    @RequestMapping("/delete-book.html")
    public ModelAndView deleteBook(@RequestParam(name = "book_id") Integer bookId) {
        bookService.deleteBook(bookId);

        ModelAndView modelAndView = new ModelAndView("redirect:books.html");
        return modelAndView;
    }

    @RequestMapping(value = "/save-book.html", method = RequestMethod.POST)
    public ModelAndView saveBook(BookBean book) {
        book.setReadAlready(false);
        bookService.saveBook(book);

        ModelAndView modelAndView = new ModelAndView("redirect:books.html");
        return modelAndView;
    }

    @RequestMapping(value = "/read-book.html")
    public ModelAndView readBook(@RequestParam(name = "book_id") Integer bookId) {
        BookBean book = bookService.getBookById(bookId);
        book.setReadAlready(true);
        bookService.saveBook(book);

        ModelAndView modelAndView = new ModelAndView("redirect:books.html");
        return modelAndView;
    }

    @RequestMapping(value = "/search.html", method = RequestMethod.GET)
    public ModelAndView searchBooks(@RequestParam(name = "searchText") String searchText,@PathVariable Map<String, String> pathVariablesMap, HttpServletRequest req) {

        PagedListHolder<BookBean> booksList = null;
        String type = pathVariablesMap.get("type");
        if (null == type) {
            // First Request, Return first set of list
            List<BookBean> books = bookService.searchForBook(searchText);
            booksList = new PagedListHolder();
            booksList.setSource(books);
            booksList.setPageSize(10);
            req.getSession().setAttribute("booksList", booksList);

        } else if ("next".equals(type)) {
            // Return next set of list
            booksList = (PagedListHolder<BookBean>) req.getSession().getAttribute("booksList");
            booksList.nextPage();

        } else if ("prev".equals(type)) {
            // Return previous set of list
            booksList = (PagedListHolder<BookBean>) req.getSession().getAttribute("booksList");
            booksList.previousPage();

        } else {
            // Return specific index set of list
            System.out.println("type:" + type);
            booksList = (PagedListHolder<BookBean>) req.getSession().getAttribute("booksList");
            int pageNum = Integer.parseInt(type);
            booksList.setPage(pageNum);
        }
        ModelAndView modelAndView = new ModelAndView("books");
        return modelAndView;
    }

    @ModelAttribute(name = "book")
    private BookBean getEmptyBook() {
        return new BookBean();
    }
}
