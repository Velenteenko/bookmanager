package com.itgreeckapp.bookmanager.repository;

import com.itgreeckapp.bookmanager.domain.Books;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Repository
@Transactional
public class BookRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public void addContact(Books book){
        this.sessionFactory.getCurrentSession().save(book);
    }

    public List<Books> listAll(){
        return this.sessionFactory.getCurrentSession().createQuery("from Books").list();
    }

    public void removeBook(Integer iD){
        Books currbook = (Books)this.sessionFactory.getCurrentSession().load(Books.class, iD);
        if (null!=currbook){
            this.sessionFactory.getCurrentSession().delete(currbook);
        }
    }
}

