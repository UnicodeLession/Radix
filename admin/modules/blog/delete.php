<?php
if (!defined('_INCODE')) die('Access Deined...');
$body = getBody('get');

if (!empty($body['id'])){
    $blogId = $body['id'];
    $blogDetailRows = getRows("SELECT id FROM blog WHERE id=$blogId");
    if ($blogDetailRows>0){
        $setForeignKey = query('SET FOREIGN_KEY_CHECKS=0');
        if ($setForeignKey !== 0);
        {
            //Thực hiện xoá
            $condition = "`blog`.`id`=$blogId";

            $deleteStatus = delete('blog', $condition);
            if (!empty($deleteStatus)){
                query('SET FOREIGN_KEY_CHECKS=1');
                setFlashData('msg', 'Xoá blog thành công');
                setFlashData('msg_type', 'success');
            }else{
                setFlashData('msg', 'Xoá blog không thành công. Vui lòng thử lại sau');
                setFlashData('msg_type', 'danger');
            }
        }

    }else{
        setFlashData('msg', 'blog không tồn tại trên hệ thống');
        setFlashData('msg_type', 'danger');
    }
}else{
    setFlashData('msg', 'Liên kết không tồn tại');
    setFlashData('msg_type', 'danger');
}

redirect('admin?module=blog');