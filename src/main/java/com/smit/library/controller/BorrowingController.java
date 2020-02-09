package com.smit.library.controller;

import com.smit.library.model.Borrowing;
import com.smit.library.service.BorrowingService;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("borrowings")
public class BorrowingController {

    private final BorrowingService borrowingService;

    @GetMapping()
    @PreAuthorize("hasAnyRole('ROLE_REGULAR', 'ROLE_ADMIN')")
    public List<Borrowing> findAllBorrowings() {
        return borrowingService.findAllBorrowings();
    }

    @PostMapping("/issue")
    @PreAuthorize("hasRole('ROLE_REGULAR')")
    public Borrowing issueBookToBorrower(@RequestBody Borrowing borrowing) {
        return borrowingService.issueBookToBorrower(borrowing);
    }

    @PostMapping("/return")
    @PreAuthorize("hasRole('ROLE_REGULAR')")
    public Borrowing returnBookToLibrary(@RequestBody Borrowing borrowing) {
        return borrowingService.returnBookToLibrary(borrowing);
    }

    @GetMapping("/overdue")
    @PreAuthorize("hasAnyRole('ROLE_REGULAR', 'ROLE_ADMIN')")
    public List<Borrowing> findOverdueBorrowings() {
        return borrowingService.findOverdueBorrowings();
    }

}
