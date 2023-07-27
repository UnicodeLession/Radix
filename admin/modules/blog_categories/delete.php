<?php
if (!defined('_INCODE')) die('Access Deined...');
$body = getBody();
if (!empty($body['id'])){
    $cateId = $body['id'];
    $cateDetailRows = getRows("SELECT id FROM `blog_categories` WHERE id=$cateId");
    if ($cateDetailRows>0){

        //Thực hiện xoá
        $condition = "id=$cateId";

        $deleteStatus = delete('blog_categories', $condition);
        if (!empty($deleteStatus)){
            setFlashData('msg', 'Xoá blog thành công');
            setFlashData('msg_type', 'success');
        }else{
            setFlashData('msg', 'Xoá blog không thành công. Vui lòng thử lại sau');
            setFlashData('msg_type', 'danger');
        }


    }else{
        setFlashData('msg', 'blog không tồn tại trên hệ thống');
        setFlashData('msg_type', 'danger');
    }
}else{
    setFlashData('msg', 'Liên kết không tồn tại');
    setFlashData('msg_type', 'danger');
}

redirect('admin?module=blog_categories');