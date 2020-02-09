package com.smit.library.dao;

import com.smit.library.model.Book;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BookDao {

    List<Book> getBooks();

    List<Book> getBooksByHeading(@Param("heading") String bookHeading);

    List<Book> getBooksByAuthorName(@Param("authorName") String authorName);

    List<Book> getBooksByAuthorSurname(@Param("authorSurname") String authorSurname);

    List<Book> getBooksByAuthorNameAndSurname(@Param("authorName") String authorName,
                                              @Param("authorSurname") String authorSurname);

    List<Book> getBooksByHeadingAndAuthorNameOrSurname(@Param("authorName") String authorName,
                                                       @Param("authorSurname") String authorSurname,
                                                       @Param("heading") String heading);

    List<Book> getBooksByHeadingAndAuthorNameAndSurname(@Param("authorName") String authorName,
                                                        @Param("authorSurname") String authorSurname,
                                                        @Param("heading") String heading);

    void deleteBook(@Param("bookId") Long bookId);

    void insertBook(@Param("book") Book book);

    void changeBookSamplesNumber(@Param("number") Integer number,
                                 @Param("bookId") Long bookId);

    Book getBookById(@Param("bookId") Long bookId);

}
