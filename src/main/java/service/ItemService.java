package service;

import domain.Item;

public interface ItemService {
	public void save(Item item);
	public Item findItemByName(String name);
}
