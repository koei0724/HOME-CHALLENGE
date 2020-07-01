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
		Product yoga = new Product("1", "요가챌린지", "1. 유튜브에서 '한시간 요가'를 검색한다.\r\n" + 
				"2. 요가를 끝낸 후 인증 사진을 찍어서 올리면 성공.");
		yoga.setDescription("한시간 요가 같이 해봐요! 몸도 마음도 건강해질거에요:)");
		yoga.setCategory("건강");
		yoga.setManufacturer("youngA92");
		yoga.setUnitsInStock(292);
		yoga.setCondition("NEW");
		yoga.setFilename("yoga.jpg");
		yoga.setLevel("어려워요");

		Product tang = new Product("2", "탕후루만들기", "1. 물과 설탕을 1:1 비율로 넣고 끓인다.\r\n" + 
				"2. 시럽이 끓어오르면 과일에 묻혀준다. \r\n" + 
				"3. 딱딱해질때까지 굳혀주면 완성.");
		tang.setDescription("만들기 어렵다는 탕후루, 함께 하면 성공할 수 있어요!");
		tang.setCategory("요리");
		tang.setManufacturer("koeun97");
		tang.setUnitsInStock(21);
		tang.setCondition("HOT");
		tang.setFilename("tang.jpg");
		tang.setLevel("어려워요");

		Product candle = new Product("3", "캔들 만들기", "1. 캔들왁스를 녹인 후 향 오일을 넣는다.\r\n" + 
				"2. 몰드에 왁스를 넣고 심지를 넣어 굳히면 캔들 완성.");
		 candle.setDescription("요즘 유행하는 인스타 갬성 캔들. 같이 만들어볼까요?");
		 candle.setCategory("만들기"); 
		 candle.setManufacturer("hyonggu132");
		 candle.setUnitsInStock(358);
		 candle.setCondition("GOOD");
		 candle.setFilename("candle.jpg");
		 candle.setLevel("보통이에요");
		
		 Product diary = new Product("4", "다이어리 꾸미기", "1. 가지고 있는 다이어리의 한 면을 핀다.\r\n" + 
		 		"2. 오늘의 일기를 다이어리에 적는다.\r\n" + 
		 		"3. 스티커와 메모지로 예쁘게 꾸미면 다꾸 성공.");
		 diary.setDescription("요즘 대세는 육.공.다.꾸. 함께해요"); 
		 diary.setCategory("공예/만들기");
		 diary.setManufacturer("mad2n7"); 
		 diary.setUnitsInStock(520);
		 diary.setCondition("NEW"); 
		 diary.setFilename("diary.jpg");
		 diary.setLevel("쉬워요");
		 
		 Product book = new Product("5", "책 한 권 읽기", "1. 읽고 싶은 책 한권을 정한다.\r\n" + 
		 		"2. 책을 다 읽고난 후 한줄 독후감을 적어서 올리면 성공.");
		 book.setDescription("바쁜 일상속 내 마음에 여유를 줄 수 있는 책 읽기 :)");
		 book.setCategory("자기계발"); 
		 book.setManufacturer("BOOkrowl2qu");
		 book.setUnitsInStock(102); 
		 book.setCondition("NEW");
		 book.setFilename("book.jpg");
		 book.setLevel("보통이에요");
		 
		 Product mojito = new Product("6", "모히또 만들기", "1. 애플민트와 라임을 으깨준다.\r\n" + 
		 		"2. 여기에 탄산수를 넣어주면 모히또 완성.");
		 mojito.setDescription("이제는 집에서도 모히또를 만들어먹어요!"); 
		 mojito.setCategory("요리");
		 mojito.setManufacturer("mooolj7"); 
		 mojito.setUnitsInStock(446);
		 mojito.setCondition("HOT"); 
		 mojito.setFilename("mojito.jpg");
		 mojito.setLevel("쉬워요");
		 
		Product dalgona = new Product("7", "달고나커피 만들기", "1. 물과 커피믹스와 설탕을 1:1:1의 비율로 섞는다.\r\n"+
	            "2. 열심히 저어준 뒤 우유 위에 달고나 거품을 올려주면 완성.");
		dalgona.setDescription("400번 저으면서 스트레스를 풀어보아요!"); 
		dalgona.setCategory("요리");
		dalgona.setManufacturer("lilly69"); 
		dalgona.setUnitsInStock(55);
		dalgona.setCondition("NEW"); 
		dalgona.setFilename("dalgona.jpg");
		dalgona.setLevel("보통이에요");
		
	    Product diet = new Product("8", "하루 식단조절하기", "1. 과일과 닭가슴살을 한끼 양만큼 준비한다. 2. 접시에 삶은 닭가슴살를 담고 과일로 예쁘게 데코하면 완성.");
	    diet.setDescription("집에서 먹는 요거트 볼로 하루를 가볍게!"); 
	    diet.setCategory("요리");
	    diet.setManufacturer("kkim984159"); 
	    diet.setUnitsInStock(534);
	    diet.setCondition("HOT"); 
	    diet.setFilename("diet2.jpg");
	    diet.setLevel("보통이에요");

	    Product flower = new Product("9", "꽃꽂이 하기", "1. 예쁜 꽃을 한 묶음 준비한다. 2. 화병에 꽃을 넣고 물을 부은 뒤 꽃을 다듬으면 성공.");
	    flower.setDescription("꽃집 부럽지 않은 아름다운 집 꾸미기"); 
	    flower.setCategory("만들기");
	    flower.setManufacturer("flowshp888"); 
	    flower.setUnitsInStock(82);
	    flower.setCondition("NEW"); 
	    flower.setFilename("flower.jpg");
	    flower.setLevel("쉬워요");
	      
	    Product smooth = new Product("10", "아사이볼 만들기", "1. 얼린 바나나와 과일들을 준비한다. 2. 믹서기에 재료를 넣고 아몬드브리즈와 색소가루를 넣고 갈아주면 끝");
	    smooth.setDescription("비싼 돈 들이지 않아도 하와이 감성을 낼 수 있어요"); 
	    smooth.setCategory("요리");
	    smooth.setManufacturer("Smoo7Slike5"); 
	    smooth.setUnitsInStock(142);
	    smooth.setCondition("NEW"); 
	    smooth.setFilename("smooth.png");
	    smooth.setLevel("보통이에요");
	      
	    Product slime = new Product("11", "나만의 슬라임", "1. 물풀과 액티와 붕사를 준비한다. 2. 점도를 조절해가며 섞다가 식용색소를 넣으면 슬라임 완성");
	    slime.setDescription("슬라임 돈들여 사지 말고 만들어요!"); 
	    slime.setCategory("만들기");
	    slime.setManufacturer("slime123"); 
	    slime.setUnitsInStock(769);
	    slime.setCondition("HOT"); 
	    slime.setFilename("slime.jpg");
	    slime.setLevel("어려워요");
	      
	    Product tea = new Product("12", "차 한잔의 여유", "1. 찻잎을 준비한다. 2. 뜨거운 물을 부어 우리면 간단한 차 완성");
	    tea.setDescription("다도로 마음을 다스려보아요"); 
	    tea.setCategory("요리");
	    tea.setManufacturer("dyagnd7425"); 
	    tea.setUnitsInStock(446);
	    tea.setCondition("HOT"); 
	    tea.setFilename("tea.jpg");
	    tea.setLevel("쉬워요");
			 		 
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
