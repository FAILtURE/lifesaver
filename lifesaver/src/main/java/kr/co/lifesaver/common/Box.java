package kr.co.lifesaver.common;

import java.util.ArrayList;
import java.util.HashSet;

public class Box<E> {

	private E e;
	
	public Box() {}
	
	public void setE(E e) { this.e = e; }
	
	public E getE() { return e; }
	
	public ArrayList<E> selectAll() {
		HashSet<E> set = new HashSet<>();
		for (E e : set) {
			set.add(e);
		}
		ArrayList<E> list = new ArrayList<>(set);	
		return list;
	}
	
	public E selectOne() {
		return e;
	}
	
}
