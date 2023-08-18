<?php
$userId = isLogin()['user_id'];
//Xử lý thêm blog
if (isPost()){

    //Validate form
    $body = getBody('post'); //Lấy tất cả dữ liệu trong form

    $errors = []; //Mảng lưu trữ các lỗi

    //Validate tên blog: Bắt buộc nhập, >=4 ký tự
    if (empty(trim($body['name']))){
        $errors['name']['required'] = 'Tên blog bắt buộc phải nhập';
    }else{
        if (strlen(trim($body['name']))<4){
            $errors['name']['min'] = 'Tên phải >=4 ký tự';
        }
    }
    //Kiểm tra mảng $errors
    if (empty($errors)) {
        //Không có lỗi xảy ra

        $dataInsert = [
            'name' => trim($body['name']),
            'slug' => trim($body['slug']),
            'create_at' => date('Y-m-d H:i:s'),
            'user_id' => $userId
        ];

        $insertStatus = insert('blog_categories', $dataInsert);

        if ($insertStatus){
            setFlashData('msg', 'Thêm blog thành công');
            setFlashData('msg_type', 'success');

            redirect('admin?module=blog_categories'); //Chuyển hướng qua trang danh sách

        }else{
            setFlashData('msg', 'Hệ thống đang gặp sự cố! Vui lòng thử lại sau.');
            setFlashData('msg_type', 'danger');

            redirect('admin?module=blog_categories'); //Load lại trang thêm blog
        }



    }else{

        //Có lỗi xảy ra
        setFlashData('msg', 'Vui lòng kiểm tra dữ liệu nhập vào');
        setFlashData('msg_type', 'danger');
        setFlashData('errors', $errors);
        setFlashData('old', $body);
        redirect('admin?module=blog_categories'); //Load lại trang blog
    }
}

$msg = getFlashData('msg');
$msgType = getFlashData('msg_type');
$errors = getFlashData('errors');
$old = getFlashData('old');
?>
<h4>
    Thêm danh mục
</h4>
<form action="" method="post">
    <div class="form-group">
        <label for="">Tên blog</label>
        <input type="text" class="form-control slug" name="title" placeholder="Tên blog..." value="<?php echo old('name', $old); ?>"/>
        <?php echo form_error('name', $errors, '<span class="error">', '</span>'); ?>
    </div>

    <div class="form-group">
        <label for="">Đường dẫn tĩnh</label>
        <input type="text" class="form-control render-slug" name="slug" placeholder="Đường dẫn tĩnh..." value="<?php echo old('slug', $old); ?>"/>
        <?php echo form_error('slug', $errors, '<span class="error">', '</span>'); ?>
        <p class="render-link"><b>Demo Link</b>: <span></span></p>
    </div>

    <button type="submit" class="btn btn-primary">
        Thêm mới
    </button>
</form>