package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

	public static ProductRepository getInstance(){
		return instance;
	} 

	public ProductRepository() {
		Product yoga = new Product("1", "�䰡ç����", "1. ��Ʃ�꿡�� '�ѽð� �䰡'�� �˻��Ѵ�.\r\n" + 
				"2. �䰡�� ���� �� ���� ������ �� �ø��� ����.");
		yoga.setDescription("�ѽð� �䰡 ���� �غ���! ���� ������ �ǰ������ſ���:)");
		yoga.setCategory("�ǰ�");
		yoga.setManufacturer("youngA92");
		yoga.setUnitsInStock(292);
		yoga.setCondition("NEW");
		yoga.setFilename("yoga.jpg");
		yoga.setLevel("�������");

		Product tang = new Product("2", "���ķ縸���", "1. ���� ������ 1:1 ������ �ְ� ���δ�.\r\n" + 
				"2. �÷��� ��������� ���Ͽ� �����ش�. \r\n" + 
				"3. �������������� �����ָ� �ϼ�.");
		tang.setDescription("����� ��ƴٴ� ���ķ�, �Բ� �ϸ� ������ �� �־��!");
		tang.setCategory("�丮");
		tang.setManufacturer("koeun97");
		tang.setUnitsInStock(21);
		tang.setCondition("HOT");
		tang.setFilename("tang.jpg");
		tang.setLevel("�������");

		Product candle = new Product("3", "ĵ�� �����", "1. ĵ��ν��� ���� �� �� ������ �ִ´�.\r\n" + 
				"2. ���忡 �ν��� �ְ� ������ �־� ������ ĵ�� �ϼ�.");
		 candle.setDescription("���� �����ϴ� �ν�Ÿ ���� ĵ��. ���� �������?");
		 candle.setCategory("�����"); 
		 candle.setManufacturer("hyonggu132");
		 candle.setUnitsInStock(358);
		 candle.setCondition("GOOD");
		 candle.setFilename("candle.jpg");
		 candle.setLevel("�����̿���");
		
		 Product diary = new Product("4", "���̾ �ٹ̱�", "1. ������ �ִ� ���̾�� �� ���� �ɴ�.\r\n" + 
		 		"2. ������ �ϱ⸦ ���̾�� ���´�.\r\n" + 
		 		"3. ��ƼĿ�� �޸����� ���ڰ� �ٹ̸� �ٲ� ����.");
		 diary.setDescription("���� �뼼�� ��.��.��.��. �Բ��ؿ�"); 
		 diary.setCategory("����/�����");
		 diary.setManufacturer("mad2n7"); 
		 diary.setUnitsInStock(520);
		 diary.setCondition("NEW"); 
		 diary.setFilename("diary.jpg");
		 diary.setLevel("������");
		 
		 Product book = new Product("5", "å �� �� �б�", "1. �а� ���� å �ѱ��� ���Ѵ�.\r\n" + 
		 		"2. å�� �� �а� �� ���� ���İ��� ��� �ø��� ����.");
		 book.setDescription("�ٻ� �ϻ�� �� ������ ������ �� �� �ִ� å �б� :)");
		 book.setCategory("�ڱ���"); 
		 book.setManufacturer("BOOkrowl2qu");
		 book.setUnitsInStock(102); 
		 book.setCondition("NEW");
		 book.setFilename("book.jpg");
		 book.setLevel("�����̿���");
		 
		 Product mojito = new Product("6", "������ �����", "1. ���ù�Ʈ�� ������ �����ش�.\r\n" + 
		 		"2. ���⿡ ź����� �־��ָ� ������ �ϼ�.");
		 mojito.setDescription("������ �������� �����Ǹ� �����Ծ��!"); 
		 mojito.setCategory("�丮");
		 mojito.setManufacturer("mooolj7"); 
		 mojito.setUnitsInStock(446);
		 mojito.setCondition("HOT"); 
		 mojito.setFilename("mojito.jpg");
		 mojito.setLevel("������");
		 
		Product dalgona = new Product("7", "�ް�Ŀ�� �����", "1. ���� Ŀ�ǹͽ��� ������ 1:1:1�� ������ ���´�.\r\n"+
	            "2. ������ ������ �� ���� ���� �ް� ��ǰ�� �÷��ָ� �ϼ�.");
		dalgona.setDescription("400�� �����鼭 ��Ʈ������ Ǯ��ƿ�!"); 
		dalgona.setCategory("�丮");
		dalgona.setManufacturer("lilly69"); 
		dalgona.setUnitsInStock(55);
		dalgona.setCondition("NEW"); 
		dalgona.setFilename("dalgona.jpg");
		dalgona.setLevel("�����̿���");
		
	    Product diet = new Product("8", "�Ϸ� �Ĵ������ϱ�", "1. ���ϰ� �߰������� �ѳ� �縸ŭ �غ��Ѵ�. 2. ���ÿ� ���� �߰����츦 ��� ���Ϸ� ���ڰ� �����ϸ� �ϼ�.");
	    diet.setDescription("������ �Դ� ���Ʈ ���� �Ϸ縦 ������!"); 
	    diet.setCategory("�丮");
	    diet.setManufacturer("kkim984159"); 
	    diet.setUnitsInStock(534);
	    diet.setCondition("HOT"); 
	    diet.setFilename("diet2.jpg");
	    diet.setLevel("�����̿���");

	    Product flower = new Product("9", "�ɲ��� �ϱ�", "1. ���� ���� �� ���� �غ��Ѵ�. 2. ȭ���� ���� �ְ� ���� ���� �� ���� �ٵ����� ����.");
	    flower.setDescription("���� �η��� ���� �Ƹ��ٿ� �� �ٹ̱�"); 
	    flower.setCategory("�����");
	    flower.setManufacturer("flowshp888"); 
	    flower.setUnitsInStock(82);
	    flower.setCondition("NEW"); 
	    flower.setFilename("flower.jpg");
	    flower.setLevel("������");
	      
	    Product smooth = new Product("10", "�ƻ��̺� �����", "1. �� �ٳ����� ���ϵ��� �غ��Ѵ�. 2. �ͼ��⿡ ��Ḧ �ְ� �Ƹ��긮��� ���Ұ��縦 �ְ� �����ָ� ��");
	    smooth.setDescription("��� �� ������ �ʾƵ� �Ͽ��� ������ �� �� �־��"); 
	    smooth.setCategory("�丮");
	    smooth.setManufacturer("Smoo7Slike5"); 
	    smooth.setUnitsInStock(142);
	    smooth.setCondition("NEW"); 
	    smooth.setFilename("smooth.png");
	    smooth.setLevel("�����̿���");
	      
	    Product slime = new Product("11", "������ ������", "1. ��Ǯ�� ��Ƽ�� �ػ縦 �غ��Ѵ�. 2. ������ �����ذ��� ���ٰ� �Ŀ���Ҹ� ������ ������ �ϼ�");
	    slime.setDescription("������ ���鿩 ���� ���� ������!"); 
	    slime.setCategory("�����");
	    slime.setManufacturer("slime123"); 
	    slime.setUnitsInStock(769);
	    slime.setCondition("HOT"); 
	    slime.setFilename("slime.jpg");
	    slime.setLevel("�������");
	      
	    Product tea = new Product("12", "�� ������ ����", "1. ������ �غ��Ѵ�. 2. �߰ſ� ���� �ξ� �츮�� ������ �� �ϼ�");
	    tea.setDescription("�ٵ��� ������ �ٽ������ƿ�"); 
	    tea.setCategory("�丮");
	    tea.setManufacturer("dyagnd7425"); 
	    tea.setUnitsInStock(446);
	    tea.setCondition("HOT"); 
	    tea.setFilename("tea.jpg");
	    tea.setLevel("������");
			 		 
		 listOfProducts.add(yoga);
		 listOfProducts.add(tang);
		 listOfProducts.add(candle);
		 listOfProducts.add(diary);
		 listOfProducts.add(book);
		 listOfProducts.add(mojito);
		 listOfProducts.add(dalgona);
		 listOfProducts.add(diet);
		 listOfProducts.add(flower);
		 listOfProducts.add(smooth);
		 listOfProducts.add(slime);
		 listOfProducts.add(tea);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
