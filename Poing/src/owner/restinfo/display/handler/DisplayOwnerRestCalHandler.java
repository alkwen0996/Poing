package owner.restinfo.display.handler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import owner.OwnerDTO;
import owner.mvc.CommandHandler;
import owner.restinfo.display.service.DisplayOwnerRestInfoService;

import poing.rest.RestTimlineReserveDTO;

public class DisplayOwnerRestCalHandler implements CommandHandler{
	DisplayOwnerRestInfoService displayRestInfoService = new DisplayOwnerRestInfoService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		OwnerDTO owner = (OwnerDTO)request.getSession().getAttribute("authOwner");
		int rest_seq = owner.getRest_seq();
		
				
			Connection conn = ConnectionProvider.getConnection();
			String sql = "select * from (select * from rest_reserve  where r_reserve_rest_seq ="+rest_seq+") a left join member b on a. r_reserve_m_seq = b.m_seq";
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			System.out.println("getReseveRest sql"+sql);
			ArrayList<RestTimlineReserveDTO> list = new ArrayList<>();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			RestTimlineReserveDTO dto = null;
			while (rs.next()) {
				dto = new RestTimlineReserveDTO();
				
				dto.setR_reserve_seq(  rs.getInt("r_reserve_seq") );
				dto.setR_reserve_date( rs.getDate("r_reserve_date").toString()  );
				dto.setR_reserve_hour(  rs.getString("r_reserve_hour") );
				dto.setM_name( rs.getString("m_name") ); 
				dto.setR_reserve_status( rs.getInt("r_reserve_status") );
				dto.setR_reserve_numofpeople(rs.getInt("r_reserve_num_of_people"));
				dto.setR_reserve_request(  rs.getString("r_reserve_request") );
				
				list.add(dto);
			}// while
			pstmt.close();
			rs.close();
			conn.close();
			
			
		
		
		System.out.println("리스트담김");
		request.setAttribute("list", list);
		
		
		return "calendar";
	}

}
