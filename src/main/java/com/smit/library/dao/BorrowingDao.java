package com.smit.library.dao;

import com.smit.library.model.Borrowing;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.time.LocalDate;
import java.util.List;

@Mapper
public interface BorrowingDao {

    void insertNewBorrowing(@Param("borrowing") Borrowing borrowing);

    List<Borrowing> getOverdueBorrowings();

    List<Borrowing> getAllBorrowings();

    void setBorrowingReturned(@Param("borrowing") Borrowing borrowing);

}
