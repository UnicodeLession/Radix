<?php
if (!defined('_INCODE')) die('Access Deined...');
$body = getBody();
if (!empty($body['id'])){
    $cateId = $body['id'];
    $cateDetailRows = getRows("SELECT id FROM `portfolio_categories` WHERE id=$cateId");
    if ($cateDetailRows>0){

        //Thực hiện xoá
        $condition = "id=$cateId";

        $deleteStatus = delete('portfolio_categories', $condition);
        if (!empty($deleteStatus)){
            setFlashData('msg', 'Xoá dự án thành công');
            setFlashData('msg_type', 'success');
        }else{
            setFlashData('msg', 'Xoá dự án không thành công. Vui lòng thử lại sau');
            setFlashData('msg_type', 'danger');
        }


    }else{
        setFlashData('msg', 'dự án không tồn tại trên hệ thống');
        setFlashData('msg_type', 'danger');
    }
}else{
    setFlashData('msg', 'Liên kết không tồn tại');
    setFlashData('msg_type', 'danger');
}

redirect('admin?module=portfolio_categories');