<?php

$body = getBody('get'); //Yêu cầu lấy phương thức get
if (!empty($body['id'])){
    $cateId = $body['id'];

    $cateDetail = firstRaw("SELECT * FROM `blog_categories` WHERE id=$cateId");
    if (empty($cateDetail)){
        //Không Tồn tại
        redirect('admin?module=blog_categories');
    }

}else{
    redirect('admin?module=blog_categories');
}


//Xử lý cập nhật nhóm người dùng
if (isPost()){

    //Validate form
    $body = getBody(); //Lấy tất cả dữ liệu trong form

    $errors = []; //Mảng lưu trữ các lỗi

    //Validate tên nhóm: Bắt buộc nhập, >=4 ký tự
    if (empty(trim($body['name']))){
        $errors['name']['required'] = 'Tên blog bắt buộc phải nhập';
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
            'slug' => trim($body['slug']),
            'update_at' => date('Y-m-d H:i:s'),
        ];

        $condition = "id=$cateId";

        $updateStatus = update('blog_categories', $dataUpdate, $condition);

        if ($updateStatus){
            setFlashData('msg', 'Cập nhật blog thành công');
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
    redirect('admin?module=blog_categories');
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
        <label for="">Tên blog: </label>
        <input type="text" class="form-control" name="name" placeholder="Tên blog..." value="<?php echo old('name', $old) ?>">
        <?php echo form_error('name', $errors, '<span class="error">', '</span>' ) ?>
    </div>
    <div class="form-group">
        <label for="">Đường dẫn tĩnh</label>
        <input type="text" class="form-control render-slug" name="slug" placeholder="Đường dẫn tĩnh..." value="<?php echo old('slug', $old); ?>"/>
        <?php echo form_error('slug', $errors, '<span class="error">', '</span>'); ?>
        <p class="render-link"><b>Link</b>: <span></span></p>
    </div>

    <button type="submit" class="btn btn-primary">
        Cập nhật
    </button>
    <a href="<?php echo getLinkAdmin('blog_categories', 'lists') ?>" class="btn btn-success">Quay lại</a>
</form>