<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Product2"%>
<%@ page import="dao.ProductR"%>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String pproductId = multi.getParameter("pproductId");
	String ppname = multi.getParameter("ppname");
	String uunitPrice = multi.getParameter("uunitPrice");
	String review = multi.getParameter("review");
	String writer = multi.getParameter("writer");

	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	ProductR dao = ProductR.getInstance();

	Product2 newReview = new Product2();
	
	newReview.setPProductId(pproductId);
	newReview.setPPname(ppname);
	newReview.setUUnitPrice(uunitPrice);
	newReview.setReview(review);
	/* newReview.setReviewPhoto(reviewphoto); */
	newReview.setFilename(fileName);
	newReview.setWriter(writer);

	dao.addProduct(newReview);

	response.sendRedirect("reviews.jsp");
%>
