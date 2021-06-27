package action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dao.ProductDAO;
import model.Product;

public class AddProductAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ProductDAO proDAO = new ProductDAO();
		Product pro = new Product();
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		// �긽�뭹 �벑濡앺럹�씠吏��뿉�꽌 �뀒�씠釉붿뿉 �뱾�뼱媛� �궡�슜�쓣 �엯�젰諛쏆븘 �뙆�씪誘명꽣濡� �쟾�떖
		
		pro.setName(req.getParameter("name"));
		
		pro.setPrice(Integer.parseInt(req.getParameter("price")));
		
		pro.setCate(req.getParameter("cate"));
		pro.setSsize(Integer.parseInt(req.getParameter("ssize")));
		pro.setMsize(Integer.parseInt(req.getParameter("msize")));
		pro.setLsize(Integer.parseInt(req.getParameter("lsize")));
		pro.setXlsize(Integer.parseInt(req.getParameter("xlsize")));
		pro.setXxlsize(Integer.parseInt(req.getParameter("xxlsize")));
		pro.setPcon(req.getParameter("pcon"));
		pro.setGender(req.getParameter("gender"));
		
	
		
		Collection<Part> parts =req.getParts();
		StringBuilder builder = new  StringBuilder();
		for(Part p : parts) {
			if(!p.getName().equals("file")) continue;
			
			if(p.getSize() ==0) continue;
			
			Part filePart=p; //file�씠�씪�뒗 �씠由꾩쓽 �뙆�씪�쓣 諛쏆븘�샂
			String fileName = filePart.getSubmittedFileName();
			
			builder.append(fileName);
			
			builder.append(",");
			
			InputStream fis =filePart.getInputStream(); // 諛붿씠�꼫由ы뙆�씪 諛쏅뒗踰�

			
			//�젅��寃쎈줈媛� �븘�슂 �떎�젣 臾쇰━寃쎈줈瑜� �븣�닔�엳�쓬 猷⑦듃濡쒕��꽣 寃쎈줈
			String realPath = req.getServletContext().getRealPath("/upload");
			System.out.println(realPath);
			
			File path = new File(realPath);
			if(!path.exists()) {
				path.mkdirs();
			}
		
				

			String filePath = realPath + File.separator + fileName;
			FileOutputStream fos = new FileOutputStream(filePath);
			//int b = fis.read(); // read媛� 1諛붿씠�듃�떒�쐞濡� �씫�뼱�샂 諛섑솚�� int �삎(�떎 �씫�뿀�떎怨� �몴�쁽�븯湲곗쐞�빐 �젙�닔�삎) �떎�씫�뿀�쑝硫� -1�쓣 諛섑솚
			byte[] buf = new byte[1024];		//諛붿씠�듃�떒�쐞濡� �씫�뼱�삤湲� �쐞�븳 �꽑�뼵
			int size = 0;
			while((size = fis.read(buf))!=-1) { //諛붿씠�듃 �떒�쐞濡� �씫�뼱�샂
				fos.write(buf,0,size); //諛붿씠�듃�떒�쐞留� �씫�쓣�닔�엳怨� 留덉�留됱뿉 諛붿씠�듃媛� �븞�릺�뒗 �떒�쐞硫� 紐살씫湲곗뿉 0遺��꽣 size 媛��닔源뚯�




			}
			fos.close();
			fis.close();
		}
		pro.setFiles(builder.toString());
		builder.delete(builder.length()-1, builder.length()); //留덉�留됱뿉 �돹�몴瑜� �젣嫄고빐二쇨린�쐞�빐 留덉�留됱쓣 �젣嫄�
		PrintWriter out = res.getWriter();
		if(proDAO.newPro(pro)) {
			// 愿�由ъ옄媛� �긽�뭹異붽��븯湲� 踰꾪듉�쓣 �닃���뜕 �솕硫댁쑝濡� �씠�룞
			out.println("<script>alert('�긽�뭹�씠 �벑濡앸릺�뿀�뒿�땲�떎'); location.href='愿�由ъ옄�긽�뭹 異붽� �럹�씠吏�'</script>");
		} else {
			out.println("<script>alert('�긽�뭹�벑濡앹뿉 �떎�뙣�븯���뒿�땲�떎.'); location.href='愿�由ъ옄�긽�뭹 異붽� �럹�씠吏�'</script>");
		}
		ArrayList<Product> datas = proDAO.showP();					
		req.setAttribute("datas", datas);						


		forward.setRedirect(false);
		forward.setPath("shop.jsp"); 						


		return forward;
	}

}
