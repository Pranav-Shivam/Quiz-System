
package com.dao;
import com.entities.Category;
import com.entities.Posts;
import java.util.*;
import java.sql.*;
import javax.servlet.annotation.MultipartConfig;
@MultipartConfig
public class PostDao 
{
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    public ArrayList<Category> getAllCategories()
    {
        ArrayList<Category> list=new ArrayList<>();
        try {
            String querry="select * from categories";
            Statement st=this.con.createStatement();
            ResultSet rs=st.executeQuery(querry);
            while (rs.next()) {
               int cid=rs.getInt("cid");
               String cname=rs.getString("cname");
               String cdescription=rs.getString("cdescription");
               Category c=new Category(cid, cname, cdescription);
               list.add(c);
//                       cname,cdescription
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public boolean savePost(Posts p)
    {
        boolean f=false;
        try {
            
            String q="insert into posts(pTitle,pContent,pCode,catId,uid) values(?,?,?,?,?)";
            PreparedStatement pt=this.con.prepareStatement(q);
            pt.setString(1, p.getpTitle());
            pt.setString(2, p.getpContent());
            pt.setString(3, p.getpCode());
            //pt.setString(4, p.getpPics());
            pt.setInt(4, p.getCatId());
            pt.setInt(5, p.getUid());
            int x=pt.executeUpdate();
            System.out.println(x);
            f=true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public List<Posts> getAllPosts() {

        List<Posts> list = new ArrayList<>();
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from posts order by pid desc");

            ResultSet set = p.executeQuery();

            while (set.next()) {

                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                //String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int catId = set.getInt("catId");
                int userId = set.getInt("userId");
                Posts post = new Posts(pid, pTitle, pContent, pCode, date, catId, userId);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Posts> getPostByCatId(int catId) {
        List<Posts> list = new ArrayList<>();
        //fetch all post by id
        //fetch all the post
        try {

            PreparedStatement p = con.prepareStatement("select * from posts where catId=?");
            p.setInt(1, catId);
            ResultSet set = p.executeQuery();

            while (set.next()) {

                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                //String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");

                int userId = set.getInt("userId");
                Posts post = new Posts(pid, pTitle, pContent, pCode, date, catId, userId);

                list.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Posts getPostByPostId(int postId) {
        Posts post = null;
        String q = "select * from posts where pid=?";
        try {
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1, postId);

            ResultSet set = p.executeQuery();

            if (set.next()) {

                int pid = set.getInt("pid");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pCode = set.getString("pCode");
                //String pPic = set.getString("pPic");
                Timestamp date = set.getTimestamp("pDate");
                int cid=set.getInt("catId");
                int userId = set.getInt("userId");
                post = new Posts(pid, pTitle, pContent, pCode, date, cid, userId);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return post;
    }
}
