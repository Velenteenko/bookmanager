package com.itgreeckapp.bookmanager.controller;

import com.itgreeckapp.bookmanager.domain.Books;
import com.itgreeckapp.bookmanager.repository.BookRepository;
import com.itgreeckapp.bookmanager.validator.BookValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class BookController {

    private BookValidator bookValidator;
    private BookRepository bookRepository;

    @Autowired
    public BookController(BookRepository bookRepository, BookValidator bookValidator){
        this.bookRepository = bookRepository;
        this.bookValidator = bookValidator;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getBooks(Model model) {
        List<Books> books = this.bookRepository.listAll();
        model.addAttribute("books", books);
        return "index";
    }

    // отобразить страницу добавления книги
    @RequestMapping(value = "addBook", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public String addBook(Model model)
    {
        model.addAttribute("addbook", new Books());

        return "addBook";
    }

    //обработать добавление книги (POST)
    @RequestMapping(value = "addBook", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String addBook(@ModelAttribute("addbook") Books book, BindingResult bindingResult)
    {
        this.bookValidator.validate(book,bindingResult);
        if (bindingResult.hasErrors())
        {
            return "addBook";
        }
        this.bookRepository.addBook(book);
        return "redirect:/";
    }

    @RequestMapping(value = "deleteBook/{iD}", method =  RequestMethod.GET)
    @PreAuthorize("hasRole('admin')")
    public String deleteBook (@PathVariable Integer iD)
    {
        this.bookRepository.removeBook(iD);
        return "redirect:/";
    }






}
