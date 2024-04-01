package News.ent;

import java.sql.Timestamp;

public class News {
	private int nid;
	private String tit;
	private String nsource;
	private Timestamp ntime;
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getTit() {
		return tit;
	}
	public void setTit(String tit) {
		this.tit = tit;
	}
	public String getNsource() {
		return nsource;
	}
	public void setNsource(String nsource) {
		this.nsource = nsource;
	}
	public Timestamp getNtime() {
		return ntime;
	}
	public void setNtime(Timestamp ntime) {
		this.ntime = ntime;
	}
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public News(int nid, String tit, String nsource, Timestamp ntime) {
		super();
		this.nid = nid;
		this.tit = tit;
		this.nsource = nsource;
		this.ntime = ntime;
	}
	@Override
	public String toString() {
		return "News [nid=" + nid + ", tit=" + tit + ", nsource=" + nsource + ", ntime=" + ntime + "]";
	}
	
}
