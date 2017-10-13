package cn.itbcat.boot.service;

import cn.itbcat.boot.entity.Role;
import cn.itbcat.boot.entity.User;
import cn.itbcat.boot.entity.UserRole;
import cn.itbcat.boot.repository.RoleRepositor;
import cn.itbcat.boot.repository.UserRepository;
import cn.itbcat.boot.repository.UserRoleRepository;
import cn.itbcat.boot.utils.ITBC;
import cn.itbcat.boot.utils.MD5;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.hibernate.criterion.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by 860117030 on 2017/9/12.
 */
@Service
@Transactional
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepositor roleRepositor;

    @Autowired
    private UserRoleRepository userRoleRepository;

    public Boolean checkName(String userName){
        User user = userRepository.findUserByEmail(userName);
        if(null == user){
            return false;
        }
        return true;
    }

    public User getUserByEmail(String email){
        return userRepository.findUserByEmail(email);
    }

    public List<Role> getAllRole() {
        return roleRepositor.findAll();
    }

    public void save(String roleId, User user) {

        if(StringUtils.isNotBlank(roleId)){
            try {
                String userId = ITBC.getId();
                user.setUserId(userId);
                User currUser = ITBC.getCurrUser();
                user.setCreateUserId(user.getUserId());
                user.setCreateTime(new Date());
                String pass = new Sha256Hash(user.getPassword(), MD5.encodeSHAString(ITBC.PRODUCT_NAME)).toHex().toString();
                user.setPassword(pass);
                userRepository.save(user);

                UserRole userRole = new UserRole();
                userRole.setId(ITBC.getId());
                userRole.setRoleId(roleId);
                userRole.setUserId(userId);

                userRoleRepository.save(userRole);
            }catch (Exception e){
                e.printStackTrace();
            }
        }

    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public User get(String userId) {
        return userRepository.findOne(userId);
    }

    public String getRoleId(String userId) {
        UserRole userRole = userRoleRepository.findByUserId(userId);
        return userRole.getRoleId();
    }

    public void update(String roleId, User user) {
        try {
            userRoleRepository.deleteByUserId(user.getUserId());
            UserRole userRole = new UserRole();
            userRole.setId(ITBC.getId());
            userRole.setRoleId(roleId);
            userRole.setUserId(user.getUserId());
            userRoleRepository.save(userRole);
            user.setCreateTime(new Date());
            User currUser = ITBC.getCurrUser();
            user.setCreateUserId(user.getUserId());
            userRepository.save(user);
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public void delete(String userId) {
        userRoleRepository.deleteByUserId(userId);
        userRepository.delete(userId);
    }
}

