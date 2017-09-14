package cn.itbcat.boot.service;

import cn.itbcat.boot.entity.Menu;
import cn.itbcat.boot.repository.MenuRepository;
import cn.itbcat.boot.utils.ITBC;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

/**
 * Created by 860117030 on 2017/9/7.
 */
@Service
public class MenuService {
    @Autowired
    private MenuRepository menuRepository;

    @Transactional(rollbackFor = Exception.class)
    public void save(Menu menu){

        menu.setMenuId(ITBC.getId());
        if("0".equals(menu.getParentId())){
            menu.setParentName("一级菜单");
        }else{
            Menu parent = menuRepository.findOne(menu.getParentId());
            menu.setParentName(parent.getName());
        }
        menu.setDelFlag("0");
        menuRepository.save(menu);
    }

    public Menu get(String id){
        Menu menu = null;
        try{
            menu = menuRepository.findOne(id);
            Menu parent = menuRepository.findOne(menu.getParentId());
            if(null == parent){
                menu.setParentName("一级菜单");
            }else {
                menu.setParentName(parent.getName());
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return menu;
    }

    public List<Menu> findAllMenu() {
        //排序
        Sort sort = new Sort(Sort.Direction.DESC, "orderNum");
        List<Menu> list = menuRepository.findAll(sort);
        return list;
    }

    public List<Menu> findMenuByParentId(String parentId){

        if(StringUtils.isBlank(parentId)){
            parentId = "0";
        }
        List<Menu> list = menuRepository.findMenuByParentId(parentId);
        return list;
    }

    public void delete(String menuId) {
        menuRepository.delete(menuId);
    }

    public void update(Menu menu) {
        if("0".equals(menu.getParentId())){
            menu.setParentName("一级菜单");
        }else{
            Menu parent = menuRepository.findOne(menu.getParentId());
            menu.setParentName(parent.getName());
        }
        menu.setDelFlag("0");
        menuRepository.save(menu);
    }
}
