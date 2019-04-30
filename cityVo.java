package Vo;

import java.io.Serializable;

public class cityVo{
		private int c_id;
		private String city;
		private int pincode;
		private stateVo statevo;
		
		public stateVo getStatevo() {
			return statevo;
		}

		public void setStatevo(stateVo statevo) {
			this.statevo = statevo;
		}

		public int getC_id() {
			return c_id;
		}
		
		public void setC_id(int c_id) {
			this.c_id = c_id;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public int getPincode() {
			return pincode;
		}
		public void setPincode(int pincode) {
			this.pincode = pincode;
		}
		
		
}
