package action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.ProductDAO;
import dto.Product;

public class NewProAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ActionForward forward = new ActionForward();

		ProductDAO proDAO = new ProductDAO();
		Product pro = new Product();


		pro.setName(req.getParameter("name"));
		pro.setPrice(Integer.parseInt(req.getParameter("price")));			
		pro.setStock(Integer.parseInt(req.getParameter("stock")));
		Collection<Part> parts =req.getParts();
		StringBuilder builder = new StringBuilder();
		for(Part p : parts) {
			if(!p.getName().equals("file")) continue;

			Part filePart=p; //file이라는 이름의 파일을 받아옴
			String fileName = filePart.getSubmittedFileName();
			
			builder.append(fileName);
			
			builder.append(",");
			
			InputStream fis =filePart.getInputStream(); // 바이너리파일 받는법

			
			//절대경로가 필요 실제 물리경로를 알수있음 루트로부터 경로
			String realPath = req.getServletContext().getRealPath("/upload");

			String filePath = realPath + File.separator + fileName;
			FileOutputStream fos = new FileOutputStream(filePath);
			//int b = fis.read(); // read가 1바이트단위로 읽어옴 반환은 int 형(다 읽었다고 표현하기위해 정수형) 다읽었으면 -1을 반환
			byte[] buf = new byte[1024];		//바이트단위로 읽어오기 위한 선언
			int size = 0;
			while((size = fis.read(buf))!=-1) { //바이트 단위로 읽어옴
				fos.write(buf,0,size); //바이트단위만 읽을수있고 마지막에 바이트가 안되는 단위면 못읽기에 0부터 size 갯수까지




			}
			fos.close();
			fis.close();
		}
		pro.setFiles(builder.toString());
		builder.delete(builder.length()-1, builder.length()); //마지막에 쉼표를 제거해주기위해 마지막을 제거
		if(!proDAO.newPro(pro)) { 						
			System.out.println("공지사항 작성 실패");
		}

		ArrayList<Product> datas = proDAO.showP();					
		req.setAttribute("datas", datas);						


		forward.setRedirect(false);
		forward.setPath("about.jsp"); 						

		return forward;
	}

}
