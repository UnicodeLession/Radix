<?php
if (!defined('_INCODE')) die('Access Deined...');
$data = [
    'pageTitle' => 'Thêm blog'
];

layout('header', 'admin', $data);
layout('sidebar', 'admin', $data);
layout('breadcrumb', 'admin', $data);

//Lấy userId đăng nhập
$userId = isLogin()['user_id'];

//Truy vấn lấy danh sách Danh mục
$allBlog_categories = getRaw("SELECT id, name FROM `blog_categories` ORDER BY name");

//Xử lý thêm nhóm người dùng
if (isPost()){

    //Validate form
    $body = getBody(); //Lấy tất cả dữ liệu trong form

    $errors = []; //Mảng lưu trữ các lỗi

    //Validate tên blog: Bắt buộc nhập

    if (empty(trim($body['title']))){
        $errors['title']['required'] = 'Tên blog bắt buộc phải nhập';
    }

    //Validate slug: Bắt buộc nhập
    if (empty(trim($body['slug']))){
        $errors['slug']['required'] = 'Đường dẫn tĩnh bắt buộc phải nhập';
    }

    //Validate nội dung: Bắt buộc phải nhập
    if (empty(trim($body['content']))){
        $errors['content']['required'] = 'Nội dung bắt buộc phải nhập';
    }

    //Validate ảnh đại diện: Bắt buộc phải nhập
    if (empty(trim($body['thumbnail']))){
        $errors['thumbnail']['required'] = 'Nội dung bắt buộc phải nhập';
    }

    //Validate ảnh mô tả: Bắt buộc phải nhập
    if (empty(trim($body['description']))){
        $errors['description']['required'] = 'Nội dung bắt buộc phải nhập';
    }


    //Validate danh mục: Bắt buộc chọn
    if (empty(trim($body['blog_category_id']))){
        $errors['blog_category_id']['required'] = 'Danh mục bắt buộc phải chọn';
    }

    //Kiểm tra mảng $errors
    if (empty($errors)) {
        //Không có lỗi xảy ra

        $dataInsert = [
            'title' => trim($body['title']),
            'slug' => trim($body['slug']),
            'thumbnail' => trim($body['thumbnail']),
            'category_id' => trim($body['blog_category_id']),
            'content' => trim($body['content']),
            'description' => trim($body['description']),
            'user_id' => $userId,
            'create_at' => date('Y-m-d H:i:s')
        ];

        $insertStatus = insert('blog', $dataInsert);

        if ($insertStatus){
            setFlashData('msg', 'Thêm blog thành công');
            setFlashData('msg_type', 'success');

            redirect('admin?module=blog'); //Chuyển hướng qua blog danh sách

        }else{
            setFlashData('msg', 'Hệ thống đang gặp sự cố! Vui lòng thử lại sau.');
            setFlashData('msg_type', 'danger');

            redirect('admin?module=blog&action=add'); //Load lại blog thêm nhóm người dùng
        }

    }else{

        //Có lỗi xảy ra
        setFlashData('msg', 'Vui lòng kiểm tra dữ liệu nhập vào');
        setFlashData('msg_type', 'danger');
        setFlashData('errors', $errors);
        setFlashData('old', $body);
        redirect('admin?module=blog&action=add'); //Load lại blog nhóm người dùng
    }
}

$msg = getFlashData('msg');
$msgType = getFlashData('msg_type');
$errors = getFlashData('errors');
$old = getFlashData('old');

?>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form action="" method="post">
                <?php
                getMsg($msg, $msgType);
                ?>
                <div class="form-group">
                    <label for="">Tên blog</label>
                    <input type="text" class="form-control slug" name="title" placeholder="Tên blog..." value="<?php echo old('title', $old); ?>"/>
                    <?php echo form_error('title', $errors, '<span class="error">', '</span>'); ?>
                </div>

                <div class="form-group">
                    <label for="">Đường dẫn tĩnh</label>
                    <input type="text" class="form-control render-slug" name="slug" placeholder="Đường dẫn tĩnh..." value="<?php echo old('slug', $old); ?>"/>
                    <?php echo form_error('slug', $errors, '<span class="error">', '</span>'); ?>
                    <p class="render-link"><b>Demo Link</b>: <span></span></p>
                </div>

                <div class="form-group">
                    <label for="">Mô tả</label>
                    <textarea name="description" class="form-control" placeholder="Mô tả..."><?php  echo old('description', $old); ?></textarea>
                </div>

                <div class="form-group">
                    <label for="">Danh mục Blog</label>
                    <select name="blog_category_id" class="form-control">
                        <option value="0">Chọn danh mục</option>
                        <?php
                        if (!empty($allBlog_categories)){
                            foreach ($allBlog_categories as $item){
                                ?>
                                <option value="<?php echo $item['id']; ?>"><?php echo $item['name']; ?></option>
                                <?php
                            }
                        }
                        ?>
                    </select>
                    <?php echo form_error('blog_category_id', $errors, '<span class="error">', '</span>'); ?>
                </div>

                <div class="form-group">
                    <label for="">Ảnh đại diện</label>
                    <div class="row ckfinder-group">
                        <div class="col-10">
                            <input type="text" class="form-control image-render" name="thumbnail" placeholder="Đường dẫn ảnh..." value="<?php echo old('thumbnail', $old); ?>"/>
                        </div>
                        <div class="col-2">
                            <button type="button" class="btn btn-success btn-block choose-image">Chọn ảnh</button>
                        </div>
                    </div>

                    <?php echo form_error('thumbnail', $errors, '<span class="error">', '</span>'); ?>
                </div>
                <div class="form-group">
                    <label for="">Nội dung</label>
                    <textarea name="content" class="form-control editor"><?php echo old('content', $old) ?></textarea>
                    <?php echo form_error('content', $errors, '<span class="error">', '</span>'); ?>
                </div>

                <button type="submit" class="btn btn-primary">Thêm mới</button>
                <a href="<?php echo getLinkAdmin('blog', 'lists'); ?>" class="btn btn-success">Quay lại</a>
            </form>
        </div>
    </section>


<?php
layout('footer', 'admin', $data);
