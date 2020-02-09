package com.smit.library.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class Book {

    private final static int BORROW_PERIOD = 4;
    private final static int BORROW_PERIOD_NEW_BOOK = 1;
    private final static int BORROW_PERIOD_FEW_SAMPLES = 1;
    private final static int FEW_SAMPLES = 5;

    private Long bookId;
    private String isbn; // International Standard Book Number
    private Integer numOfSamples;
    private LocalDate publicationDate;
    private String authorName;
    private String authorSurname;
    private String heading;
    private Integer section;
    private String sectionName;
    private Integer orderNumber;

    public String getBookLocation() {
        return String.format("%d/%s-%d", this.section, this.authorSurname.charAt(0), this.orderNumber);
    }

    public String getAuthorFullName() {
        return String.format("%s %s", this.authorName, this.authorSurname);
    }

    public String getAuthorShortName() {
        return String.format("%s. %s", this.authorName.charAt(0), this.authorSurname);
    }

    public long getBorrowPeriod() {
        return this.publicationDate.plusMonths(3L).isAfter(LocalDate.now()) ? BORROW_PERIOD_NEW_BOOK
                : this.numOfSamples < FEW_SAMPLES ? BORROW_PERIOD_FEW_SAMPLES : BORROW_PERIOD;
    }

}
