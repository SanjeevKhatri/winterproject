package service;

import domain.Item;

public interface ItemService {
	public void save(Item item);
	public void deleteItem(int id);
	public Item findItemByName(String name);
}
