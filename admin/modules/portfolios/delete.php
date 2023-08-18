<?php
if (!defined('_INCODE')) die('Access Deined...');
$body = getBody();
if (!empty($body['id'])){
    $portfolioId = $body['id'];
    $portfolioDetailRows = getRows("SELECT id FROM portfolios WHERE id=$portfolioId");
    if ($portfolioDetailRows>0){
        $setForeignKey = query('SET FOREIGN_KEY_CHECKS=0');
        if ($setForeignKey !== 0);
        {
            //Thực hiện xoá
            $condition = "`portfolios`.`id`=$portfolioId";

            $deleteStatus = delete('portfolios', $condition);
            if (!empty($deleteStatus)){
                delete('portfolio_images', "portfolio_id=".$portfolioId);
                query('SET FOREIGN_KEY_CHECKS=1');
                setFlashData('msg', 'Xoá dự án thành công');
                setFlashData('msg_type', 'success');
            }else{
                setFlashData('msg', 'Xoá dự án không thành công. Vui lòng thử lại sau');
                setFlashData('msg_type', 'danger');
            }
        }

    }else{
        setFlashData('msg', 'Dự án không tồn tại trên hệ thống');
        setFlashData('msg_type', 'danger');
    }
}else{
    setFlashData('msg', 'Liên kết không tồn tại');
    setFlashData('msg_type', 'danger');
}

redirect('admin?module=portfolios');