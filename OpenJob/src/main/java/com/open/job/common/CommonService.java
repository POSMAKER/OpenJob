package com.open.job.common;

import org.springframework.stereotype.Service;

@Service
public class CommonService {
	public String getCapitalized(String text) {
		return text.substring(0, 1).toUpperCase()+text.substring(1);
	}
}
