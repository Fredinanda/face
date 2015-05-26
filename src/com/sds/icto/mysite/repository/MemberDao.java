package com.sds.icto.mysite.repository;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.sds.icto.mysite.domain.*;


@Repository
public class MemberDao {
	//S
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	public void insert( MemberVo vo )		{
	
		sqlMapClientTemplate.insert("member.insert", vo);
	}
	
	public MemberVo getMember( MemberVo vo ){
	return null;
	}
}
