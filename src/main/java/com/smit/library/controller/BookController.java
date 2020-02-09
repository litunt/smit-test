package com.smit.library.controller;

import com.smit.library.model.Book;
import com.smit.library.model.BookReport;
import com.smit.library.service.BookService;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@AllArgsConstructor
@RequestMapping("/books")
public class BookController {

    private final BookService bookService;

    @PostMapping("add")
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    public void addNewBook(@RequestBody Book newBook) {
        bookService.addNewBook(newBook);
    }

    @GetMapping("report")
    public List<BookReport> getReportAboutAllBooks() {
        return bookService.getBookReport();
    }

    @GetMapping()
    @PreAuthorize("hasAnyRole('ROLE_REGULAR', 'ROLE_ADMIN')")
    public List<Book> getBooks() {
        return bookService.getAllBooks();
    }

    @GetMapping("find")
    @PreAuthorize("hasAnyRole('ROLE_REGULAR', 'ROLE_ADMIN')")
    public List<Book> getBooksBySearch(@RequestParam Map<String, String> searchParameters) {
        return bookService.getBooksBySearchParameters(searchParameters);
    }

    @DeleteMapping("{bookId}/delete")
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    public void deleteBook(@PathVariable Long bookId) {
        bookService.deleteBookById(bookId);
    }

}
