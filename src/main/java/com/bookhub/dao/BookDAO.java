package com.bookhub.dao;

//Author : Kirtan

import com.bookhub.entity.Book;
import java.util.List;

public interface BookDAO {
    void save(Book book);
    List<Book> findAll();
}



