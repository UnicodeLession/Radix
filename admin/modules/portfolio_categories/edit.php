<?php

$body = getBody('get'); //Yêu cầu lấy phương thức get
if (!empty($body['id'])){
    $cateId = $body['id'];

    $cateDetail = firstRaw("SELECT * FROM `portfolio_categories` WHERE id=$cateId");
    if (empty($cateDetail)){
        //Không Tồn tại
        redirect('admin?module=portfolio_categories');
    }

}else{
    redirect('admin?module=portfolio_categories');
}


//Xử lý cập nhật nhóm người dùng
if (isPost()){

    //Validate form
    $body = getBody(); //Lấy tất cả dữ liệu trong form

    $errors = []; //Mảng lưu trữ các lỗi

    //Validate tên nhóm: Bắt buộc nhập, >=4 ký tự
    if (empty(trim($body['name']))){
        $errors['name']['required'] = 'Tên dự án bắt buộc phải nhập';
    }else{
        if (strlen(trim($body['name']))<4){
            $errors['name']['min'] = 'Họ tên phải >=4 ký tự';
        }
    }

    //Kiểm tra mảng $errors
    if (empty($errors)) {
        //Không có lỗi xảy ra

        $dataUpdate = [
            'name' => trim($body['name']),
            'update_at' => date('Y-m-d H:i:s'),
        ];

        $condition = "id=$cateId";

        $updateStatus = update('portfolio_categories', $dataUpdate, $condition);

        if ($updateStatus){
            setFlashData('msg', 'Cập nhật dự án thành công');
            setFlashData('msg_type', 'success');

        }else{
            setFlashData('msg', 'Hệ thống đang gặp sự cố! Vui lòng thử lại sau.');
            setFlashData('msg_type', 'danger');

        }

    }else{

        //Có lỗi xảy ra
        setFlashData('msg', 'Vui lòng kiểm tra dữ liệu nhập vào');
        setFlashData('msg_type', 'danger');
        setFlashData('errors', $errors);
        setFlashData('old', $body);

    }

    //Load lại trang sửa hiện tại
    redirect('admin?module=portfolio_categories');
}

$msg = getFlashData('msg');
$msgType = getFlashData('msg_type');
$errors = getFlashData('errors');
$old = getFlashData('old');

if (empty($old) && !empty($cateDetail)){
    $old = $cateDetail;
}

?>

<h4>
    Cập nhật danh mục
</h4>
<form action="" method="post">
    <div class="form-group">
        <label for="">Tên dự án: </label>
        <input type="text" class="form-control" name="name" placeholder="Tên danh mục..." value="<?php echo old('name', $old) ?>">
        <?php echo form_error('name', $errors, '<span class="error">', '</span>' ) ?>
    </div>
    <button type="submit" class="btn btn-primary">
        Cập nhật
    </button>
    <a href="<?php echo getLinkAdmin('portfolio_categories', 'lists') ?>" class="btn btn-success">Quay lại</a>
</form>