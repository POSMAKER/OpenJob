package com.open.job.common;

import org.springframework.stereotype.Service;

@Service
public class CommonService {
	public Integer IntegerFilter(String text) {
		try {
			return Integer.parseInt(text);
		}catch(NumberFormatException e) {
			return null;
		}
	}
}
