package com.smit.library.model;

import lombok.Data;

import java.util.Collection;

@Data
public class Role {

    private Long id;
    private String name;
    private Collection<LibraryWorker> workers;

}
