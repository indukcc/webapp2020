package jspservlet.ch07;

public class BookModel {
    private String isbn;
    private String title;
    private double price;
    
    public BookModel(String isbn, String title, double price) {
    	this.isbn = isbn;
    	this.title = title;
    	this.price = price;
    }

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
    
}
