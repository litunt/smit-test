package com.smit.library.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class BookReport {

    private String bookHeading;
    private String bookAuthor;
    private String bookLocation;
    private long borrowPeriodInWeeks;
    private int numOfSamples;

}
