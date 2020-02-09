package com.smit.library.controller;

import com.smit.library.model.Borrower;
import com.smit.library.service.BorrowerService;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@AllArgsConstructor
@RequestMapping("borrowers")
public class BorrowerController {

    private final BorrowerService borrowerService;

    @PostMapping("add")
    @PreAuthorize("hasAnyRole('ROLE_REGULAR', 'ROLE_ADMIN')")
    public Borrower addNewBorrower(@RequestBody Borrower borrower) {
        return borrowerService.addNewBorrower(borrower);
    }

    @GetMapping("find")
    @PreAuthorize("hasAnyRole('ROLE_REGULAR', 'ROLE_ADMIN')")
    public List<Borrower> findBorrowerByName(@RequestParam Map<String, String> borrowerName) {
        return borrowerService.findBorrowerByName(borrowerName);
    }

}
