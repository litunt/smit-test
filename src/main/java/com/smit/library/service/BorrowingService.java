package com.smit.library.service;

import com.smit.library.dao.BookDao;
import com.smit.library.dao.BorrowingDao;
import com.smit.library.model.Book;
import com.smit.library.model.Borrowing;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
@AllArgsConstructor
public class BorrowingService {

    private final BookDao bookDao;
    private final BorrowingDao borrowingDao;
    private static final Logger logger = Logger.getLogger(BookService.class.getName());


    public List<Borrowing> findOverdueBorrowings() {
        List<Borrowing> borrowings = null;
        try {
            borrowings = borrowingDao.getOverdueBorrowings();
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Finding overdue borrowings failed! Error: " + e.getMessage());
        } finally {
            if (borrowings != null) {
                logger.log(Level.FINE, "Finding overdue borrowings succeeded");
            } else {
                borrowings = new ArrayList<>();
            }
        }
        return borrowings;
    }

    public List<Borrowing> findAllBorrowings() {
        List<Borrowing> borrowings = null;
        try {
            borrowings = borrowingDao.getAllBorrowings();
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Finding all borrowings failed! Error: " + e.getMessage());
        } finally {
            if (borrowings != null) {
                logger.log(Level.FINE, "Finding all borrowings succeeded");
            } else {
                borrowings = new ArrayList<>();
            }
        }
        return borrowings;
    }

    public Borrowing issueBookToBorrower(Borrowing borrowing) {
        Book bookToIssue = bookDao.getBookById(borrowing.getBookId());
        if (bookToIssue.getNumOfSamples() == 0) {
            logger.log(Level.WARNING, "Cannot issue a book, because no samples left!");
            return borrowing;
        }
        try {
            borrowing.setEstimatedReturnDate(LocalDate.now().plusWeeks(bookToIssue.getBorrowPeriod()));
            borrowingDao.insertNewBorrowing(borrowing);
            bookToIssue.setNumOfSamples(bookToIssue.getNumOfSamples() - 1);
            bookDao.changeBookSamplesNumber(bookToIssue.getNumOfSamples(), bookToIssue.getBookId());
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Issuing a book failed! Error: " + e.getMessage());
            return null;
        }
        logger.log(Level.FINE, "Issuing a book succeeded");
        return borrowing;
    }

    public Borrowing returnBookToLibrary(Borrowing borrowing) {
        Book bookToReturn = bookDao.getBookById(borrowing.getBookId());
        if (borrowing.getReturnDate() == null) {
            borrowing.setReturnDate(LocalDate.now());
        }
        try {
            borrowingDao.setBorrowingReturned(borrowing);
            bookToReturn.setNumOfSamples(bookToReturn.getNumOfSamples() + 1);
            bookDao.changeBookSamplesNumber(bookToReturn.getNumOfSamples(), bookToReturn.getBookId());
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Returning a book failed! Error: " + e.getMessage());
            return null;
        }
        logger.log(Level.FINE, "Returning a book succeeded");
        return borrowing;
    }

}
