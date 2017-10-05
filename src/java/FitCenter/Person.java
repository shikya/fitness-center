/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package FitCenter;
/**
 *
 * @author SHRI
 */
public class Person {
    private int pid,age,weight,height;
    private String fname,mname,lname,adress;
    private int y=2000,m=1,d=1;
    private String phno,ephno;
    private String gender="M";

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    public void Person(){
    }
    
    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getDob() {
        String str;
        str=Integer.toString(y)+"-"+Integer.toString(m)+"-"+Integer.toString(d);
        return str;
    }

    public void setDob(int year,int month,int day) {
        if(year>0 && month>0 && day>0){
            y=year;
            m=month;
            d=day;
            
            age=2013-year;
        }
            
    }

    public String getEphno() {
        return ephno;
    }

    public void setPhno(String phno) {
        Long a;
        a=Long.parseLong(phno);
        if(a<=1111111111)
            phno="Error";
        this.phno=phno;
    }

    public void setEphno(String ephno) {
        Long a;
        a=Long.parseLong(ephno);
        if(a<=1111111111)
            ephno="Error";
        this.ephno = ephno;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getPhno() {
        return phno;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public String toSQLStringInsert(){
        String str;
        str="INSERT INTO `fitdb`.`person` (`fname`, `mname`, `lname`, `address`, `dob`, `age`, `weight`, `height`, `phno`, `ephno`, `gender`) "
                + "VALUES ('"+fname+"', '"+mname+"', '"+lname+"', '"+adress+"', '"+getDob()+"',"
                + "'"+Integer.toString(age)+"', '"+Integer.toString(weight)+"', '"+Integer.toString(height)+"', "
                + "'"+phno+"', '"+ephno+"','"+gender+"');";
        return str;
    }
    public String toSQLStringUpdate(){
        String str;
        str="UPDATE `fitdb`.`person` SET `pid`='"+pid+"', `fname`='"+fname+"', `mname`='"+mname+"', `lname`='"+lname+"', "
                +"`address`='"+adress+"', `dob`='"+getDob()+"', `age`='"+Integer.toString(age)+"', `weight`='"+Integer.toString(weight)+"',"
                +"`height`='"+Integer.toString(height)+"', `phno`='"+phno.toString()+"',`gender`='"+gender+"', `ephno`='"+ephno.toString()+"' WHERE `pid`='"+pid+"';";
        return str;
    }
}