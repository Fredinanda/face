package com.sds.icto.mysite.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sds.icto.mysite.domain.TimeLineVo;
import com.sds.icto.mysite.repository.TimeLineDao;

@Service
public class TimeLineService {
	
	@Autowired 
	TimeLineDao TimeLineDao;
	
	public List<TimeLineVo> getTimeLineList(){
		
		return TimeLineDao.fetchList();
		
	}

}