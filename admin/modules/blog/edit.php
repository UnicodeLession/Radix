<?php
if (!defined('_INCODE')) die('Access Deined...');
$data = [
    'pageTitle' => 'Cập nhật blog'
];

layout('header', 'admin', $data);
layout('sidebar', 'admin', $data);
layout('breadcrumb', 'admin', $data);

//Lấy dữ liệu cũ của nhóm người dùng
$body = getBody('get'); //Yêu cầu lấy phương thức get
$allBlog_categories = getRaw("SELECT id, name FROM `blog_categories` ORDER BY name");

if (!empty($body['id'])){
    $blogId = $body['id'];

    $blogDetail = firstRaw("SELECT * FROM blog WHERE id=$blogId");

    if (empty($blogDetail)){
        //Không Tồn tại
        redirect('admin?module=blog');
    }

}else{
    redirect('admin?module=blog');
}


//Xử lý cập nhật nhóm người dùng
if (isPost()){

    //Validate form
    $body = getBody('post'); //Lấy tất cả dữ liệu trong form

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
    if (empty($body['category_id'])){
        $errors['category_id']['required'] = 'Danh mục bắt buộc phải chọn';
    }


    //Kiểm tra mảng $errors
    if (empty($errors)) {
        //Không có lỗi xảy ra

        $dataInsert = [
            'title' => trim($body['title']),
            'slug' => trim($body['slug']),
            'thumbnail' => trim($body['thumbnail']),
            'category_id' => trim($body['category_id']),
            'content' => trim($body['content']),
            'description' => trim($body['description']),
            'update_at' => date('Y-m-d H:i:s')
        ];

        $condition = "id=$blogId";

        $updateStatus = update('blog', $dataInsert, $condition);

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
    redirect('admin?module=blog&action=edit&id='.$blogId);
}

$msg = getFlashData('msg');
$msgType = getFlashData('msg_type');
$errors = getFlashData('errors');
$old = getFlashData('old');

if (empty($old) && !empty($blogDetail)){
    $old = $blogDetail;
}

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
                    <p class="render-link"><b>Link</b>: <span></span></p>
                </div>

                <div class="form-group">
                    <label for="">Ảnh</label>
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
                    <label for="">Mô tả</label>
                    <textarea name="description" class="form-control" placeholder="Mô tả ngắn..."><?php echo old('description', $old) ?></textarea>
                    <?php echo form_error('description', $errors, '<span class="error">', '</span>'); ?>
                </div>
                
                <div class="form-group">
                    <label for="">Danh mục</label>
                    <select name="category_id" class="form-control">
                        <option value="0">Chọn danh mục</option>
                        <?php
                        foreach ($allBlog_categories as $item){
                            ?>
                            <option value="<?php echo $item['id']; ?>" <?php echo (!empty($old['category_id']) && $item['id'] == $old['category_id']) ? 'selected' : false; ?>><?php echo $item['name']; ?></option>
                            <?php
                        }
                        ?>
                    </select>
                    <?php echo form_error('category_id', $errors, '<span class="error">', '</span>'); ?>
                </div>

                <div class="form-group">
                    <label for="">Nội dung</label>
                    <textarea name="content" class="form-control editor"><?php echo old('content', $old) ?></textarea>
                    <?php echo form_error('content', $errors, '<span class="error">', '</span>'); ?>
                </div>

                <button type="submit" class="btn btn-primary">Cập nhật</button>
                <a href="<?php echo getLinkAdmin('blog', 'lists'); ?>" class="btn btn-success">Quay lại</a>
            </form>
        </div>
    </section>

<?php
layout('footer', 'admin', $data);
