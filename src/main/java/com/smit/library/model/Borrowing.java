package com.smit.library.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class Borrowing {

    private Long borrowingId;
    private Long borrowerId;
    private String borrowerName;
    private String borrowerEmail;
    private Long bookId;
    private String bookISBN;
    private String bookHeading;
    private String bookAuthor;
    private LocalDate borrowDate;
    private LocalDate estimatedReturnDate;
    private LocalDate returnDate;
    private Integer overdueDays;

}
