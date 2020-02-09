package com.smit.library.service;

import com.smit.library.model.Book;
import com.smit.library.dao.BookDao;
import com.smit.library.model.BookReport;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class BookService {

    private final BookDao bookDao;

    private static final Logger logger = Logger.getLogger(BookService.class.getName());

    public List<Book> getAllBooks() {
        logger.log(Level.INFO, "Starting: get all library books");
        List<Book> books = null;
        try {
            books = bookDao.getBooks();
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Getting all books failed! Error: " + e.getMessage());
        } finally {
            if (books != null) {
                logger.log(Level.FINE, "Getting books succeeded");
            } else {
                books = new ArrayList<>();
            }
        }

        return books;
    }

    public List<Book> getBooksBySearchParameters(Map<String, String> searchParameters) {
        logger.log(Level.INFO, "Starting: search books by parameters");
        String heading = null;
        String authorName = null;
        String authorSurname = null;

        for (Map.Entry<String, String> param : searchParameters.entrySet()) {
            switch (param.getKey()) {
                case "heading":
                    heading = param.getValue();
                    break;
                case "authorName":
                    authorName = param.getValue();
                    break;
                case "authorSurname":
                    authorSurname = param.getValue();
                    break;
            }
        }
        return chooseBookSearch(heading, authorName, authorSurname);
    }

    public void deleteBookById(Long bookId) {
        logger.log(Level.INFO, String.format("Starting: delete book by ID=%d", bookId));
        try {
            bookDao.deleteBook(bookId);
        } catch (Exception e) {
            logger.log(Level.SEVERE, String.format("Failed to delete book by ID=%d!. Error: %s", bookId, e.getMessage()));
        }
    }

    public void addNewBook(Book book) {
        logger.log(Level.INFO, "Starting: add new book");
        try {
            bookDao.insertBook(book);
        } catch (Exception e) {
            logger.log(Level.SEVERE, String.format("Failed to add new book!. Error: %s", e.getMessage()));
        }
    }

    public List<BookReport> getBookReport() {
        List<Book> books = bookDao.getBooks();
        return books.stream()
                .map(book -> BookReport.builder()
                    .bookAuthor(book.getAuthorShortName())
                    .bookHeading(book.getHeading())
                    .bookLocation(book.getBookLocation())
                    .numOfSamples(book.getNumOfSamples())
                    .borrowPeriodInWeeks(book.getBorrowPeriod())
                    .build())
                .collect(Collectors.toList());
    }

    private List<Book> chooseBookSearch(String heading, String authorName, String authorSurname) {
        List<Book> resultList = null;
        try {
            if (heading != null && authorName == null && authorSurname == null) {
                resultList = bookDao.getBooksByHeading(heading);
            } else if (heading != null && (authorName != null || authorSurname != null)) {
                resultList = bookDao.getBooksByHeadingAndAuthorNameOrSurname(authorName, authorSurname, heading);
            } else if (heading != null && authorName != null && authorSurname != null) {
                resultList = bookDao.getBooksByHeadingAndAuthorNameAndSurname(authorName, authorSurname, heading);
            } else if (heading == null && authorName != null && authorSurname == null) {
                resultList = bookDao.getBooksByAuthorName(authorName);
            } else if (heading == null && authorName == null && authorSurname != null) {
                resultList = bookDao.getBooksByAuthorSurname(authorSurname);
            } else if (heading == null && authorName != null && authorSurname != null) {
                resultList = bookDao.getBooksByAuthorNameAndSurname(authorName, authorSurname);
            }
        } catch (Exception e) {
            logger.log(Level.SEVERE, String.format("Getting books by parameters: heading=%s, authorName=%s, authorSurname=%s failed! Error: %s",
                    heading, authorName, authorSurname, e.getMessage()));
        } finally {
            if (resultList != null) {
                logger.log(Level.FINE, "Getting books succeeded");
            } else {
                resultList = new ArrayList<>();
            }
        }
        return resultList;
    }

}
