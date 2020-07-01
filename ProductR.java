package dao;

import java.util.ArrayList;

import dto.Product2;

public class ProductR {

	private ArrayList<Product2> listOfProducts = new ArrayList<Product2>();
	private static ProductR instance = new ProductR();

	public static ProductR getInstance() {
		return instance;
	}

	public ProductR() {
		Product2 yoga = new Product2("HOT", "�䰡ç����", "��Ʃ�꿡�� '�ѽð� �䰡'�� �˻��� �� ������� ����! ");
		yoga.setFilename("R_yoga.jpg");
		yoga.setReview("�䰡 �ѽð� �������� ��վ��!");
		yoga.setReviewPhoto("R_yoga.jpg");
		yoga.setWriter("joasdi23");

		Product2 tang = new Product2("NEW", "���ķ縸���", "���� ������ 1:1 ������ ���� �� ���� ���� �ξ ������ ����! ");
		tang.setFilename("R_tang.jpg");
		tang.setReview("ó������ ���ķ� ����� �����߾�䤾����");
		tang.setReviewPhoto("R_tang.jpg");
		tang.setWriter("qoiwue01");

		Product2 candle = new Product2("CRAZY", "ĵ�� �����", "�ν��� �� ������ �ְ� ���� �� Ʋ�� �ְ� ������ �ϼ�!");
		candle.setFilename("R_candle.jpg");
		candle.setReview("���� ����� ����! ���ʷ� ���׸��� ȿ������ ���� ���ƿ�");
		candle.setReviewPhoto("R_candle.jpg");
		candle.setWriter("3098aks");

		Product2 diary = new Product2("UP", "���̾ �ٹ̱�", "���̾�� ������ �ϱ⸦ ���ڰ� �ٹ��� �������� ����!");
		diary.setFilename("R_diary.jpg");
		diary.setReview("���� �ݼ��� ���ٴ°� ���� �������Ф� �׷��� ���� ������");
		diary.setReviewPhoto("R_diary.jpg");
		diary.setWriter("asd0");

		Product2 book = new Product2("INCREDIBLE", "å �ѱ� �б�", "å �ѱ��� �а� ������ �Ұ��� ��� �������� ����!");
		book.setFilename("R_book.jpg");
		book.setReview("�������� å�� �о��׿�. ������ ������� �� ���� ���� �����ϴ�");
		book.setReviewPhoto("R_book.jpg");
		book.setWriter("asjhl213");

		Product2 mojito = new Product2("JOIN", "������ �����", "���ù�Ʈ�� ������ ������ ź����� �־��ָ� �ϼ�!");
		mojito.setFilename("R_mojito.jpg");
		mojito.setReview("������ ����ٰ� �� �����...�� �׷��� ���� �ְ�");
		mojito.setReviewPhoto("R_mojito.jpg");
		mojito.setWriter("190uj");

		listOfProducts.add(yoga);
		listOfProducts.add(tang);
		listOfProducts.add(candle);
		listOfProducts.add(diary);
		listOfProducts.add(book);
		listOfProducts.add(mojito);
	}

	public ArrayList<Product2> getAllProducts() {
		return listOfProducts;
	}

	public Product2 getPProductById(String pproductId) {
		Product2 pproductById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product2 product = listOfProducts.get(i);
			if (product != null && product.getPProductId() != null && product.getPProductId().equals(pproductId)) {
				pproductById = product;
				break;
			}
		}
		return pproductById;
	}

	public void addProduct(Product2 product) {
		listOfProducts.add(product);
	}
}
