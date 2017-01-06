package dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domain.Item;


@Repository
public interface ItemDao extends JpaRepository<Item, Integer> {
	public Item findByName(String name);
}

