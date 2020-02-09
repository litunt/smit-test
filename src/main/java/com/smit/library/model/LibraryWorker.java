package com.smit.library.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Collection;

@Data
@AllArgsConstructor
public class LibraryWorker {

    private Long workerId;
    private String username;
    private String password;
    private String name;
    private Collection<Role> roles;
}
