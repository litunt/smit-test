package com.smit.library.dao;

import com.smit.library.model.Borrower;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BorrowerDao {

    List<Borrower> getBorrowerByName(@Param("borrowerName") String borrowerName);

    void insertBorrower(@Param("borrower") Borrower borrower);

}
