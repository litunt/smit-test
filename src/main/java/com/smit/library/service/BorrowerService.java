package com.smit.library.service;

import com.smit.library.dao.BorrowerDao;
import com.smit.library.model.Borrower;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
@AllArgsConstructor
public class BorrowerService {

    private final BorrowerDao borrowerDao;
    private static final Logger logger = Logger.getLogger(BookService.class.getName());


    public List<Borrower> findBorrowerByName(Map<String, String> borrowerName) {
        List<Borrower> borrowers = null;
        try {
            borrowers = borrowerDao.getBorrowerByName(borrowerName.get("name"));
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Finding borrower by name failed! Error: " + e.getMessage());
        } finally {
            if (borrowers != null) {
                logger.log(Level.FINE, "Finding borrowers succeeded");
            } else {
                borrowers = new ArrayList<>();
            }
        }
        return borrowers;
    }

    public Borrower addNewBorrower(Borrower borrower) {
        logger.log(Level.INFO, String.format("Starting: add new borrower: name=%s, email=%s",
                borrower.getName(), borrower.getEmail()));
        try {
            borrowerDao.insertBorrower(borrower);
        } catch (Exception e) {
            logger.log(Level.SEVERE, "Adding new borrower failed! Error: " + e.getMessage());
            return null;
        }
        return borrower;
    }

}
