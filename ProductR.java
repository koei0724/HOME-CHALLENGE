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
		Product2 yoga = new Product2("HOT", "요가챌린지", "유튜브에서 '한시간 요가'를 검색한 후 사진찍어 인증! ");
		yoga.setFilename("R_yoga.jpg");
		yoga.setReview("요가 한시간 생각보다 재밌어요!");
		yoga.setReviewPhoto("R_yoga.jpg");
		yoga.setWriter("joasdi23");

		Product2 tang = new Product2("NEW", "탕후루만들기", "물과 설탕을 1:1 비율로 끓인 후 과일 위에 부어서 굳히면 성공! ");
		tang.setFilename("R_tang.jpg");
		tang.setReview("처음으로 탕후루 만들기 성공했어요ㅎㅎㅎ");
		tang.setReviewPhoto("R_tang.jpg");
		tang.setWriter("qoiwue01");

		Product2 candle = new Product2("CRAZY", "캔들 만들기", "왁스에 향 오일을 넣고 끓인 후 틀에 넣고 굳히면 완성!");
		candle.setFilename("R_candle.jpg");
		candle.setReview("향초 만들기 성공! 향초로 인테리어 효과까지 나서 좋아요");
		candle.setReviewPhoto("R_candle.jpg");
		candle.setWriter("3098aks");

		Product2 diary = new Product2("UP", "다이어리 꾸미기", "다이어리에 오늘의 일기를 예쁘게 꾸민후 사진으로 인증!");
		diary.setFilename("R_diary.jpg");
		diary.setReview("세상에 금손이 많다는걸 새삼 느꼈어요ㅠㅠ 그래도 나름 성공쓰");
		diary.setReviewPhoto("R_diary.jpg");
		diary.setWriter("asd0");

		Product2 book = new Product2("INCREDIBLE", "책 한권 읽기", "책 한권을 읽고 간단한 소감을 적어서 사진으로 인증!");
		book.setFilename("R_book.jpg");
		book.setReview("오랜만에 책을 읽었네요. 마음이 편안해진 것 같고 아주 좋습니다");
		book.setReviewPhoto("R_book.jpg");
		book.setWriter("asjhl213");

		Product2 mojito = new Product2("JOIN", "모히또 만들기", "애플민트와 라임을 으깨서 탄산수에 넣어주면 완성!");
		mojito.setFilename("R_mojito.jpg");
		mojito.setReview("모히또 만들다가 컵 깼어요...ㅎ 그래도 맛은 최고");
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
