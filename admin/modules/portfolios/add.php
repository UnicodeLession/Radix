<?php
if (!defined('_INCODE')) die('Access Deined...');
$data = [
    'pageTitle' => 'Thêm Blog'
];

layout('header', 'admin', $data);
layout('sidebar', 'admin', $data);
layout('breadcrumb', 'admin', $data);

//Lấy userId đăng nhập
$userId = isLogin()['user_id'];

//Truy vấn lấy danh sách Danh mục
$allPortfolio_categories = getRaw("SELECT id, name FROM `portfolio_categories` ORDER BY name");

//Xử lý thêm nhóm người dùng
if (isPost()){

    //Validate form
    $body = getBody(); //Lấy tất cả dữ liệu trong form


    $errors = []; //Mảng lưu trữ các lỗi

    //Validate tên Blog: Bắt buộc nhập

    if (empty(trim($body['name']))){
        $errors['name']['required'] = 'Tên Blog bắt buộc phải nhập';
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

    //Validate ảnh link video: Bắt buộc phải nhập
    if (empty(trim($body['video']))){
        $errors['video']['required'] = 'Nội dung bắt buộc phải nhập';
    }

    //Validate danh mục: Bắt buộc chọn
    if (empty(trim($body['portfolio_category_id']))){
        $errors['portfolio_category_id']['required'] = 'Danh mục bắt buộc phải chọn';
    }

    //Validate ảnh dự án: Bắt buộc phải nhập < khi đã nhấn thêm ảnh thì phải nhập còn nếu k có input thì ấn thêm mới vẫn được>
    $galleryArr = [];
    if(!empty($body['gallery'])) {
        $galleryArr =$body['gallery'];
        if (!empty($galleryArr)){
            foreach ($galleryArr as $key => $item){
                if (empty(trim($item))){
                    $errors['gallery']['required'][$key] = 'Vui lòng chọn ảnh';
                }
            }
        }
    }


    //Kiểm tra mảng $errors
    if (empty($errors)) {
        //Không có lỗi xảy ra

        $dataInsert = [
            'name' => trim($body['name']),
            'slug' => trim($body['slug']),
            'thumbnail' => trim($body['thumbnail']),
            'video' => trim($body['video']),
            'portfolio_category_id' => trim($body['portfolio_category_id']),
            'content' => trim($body['content']),
            'description' => trim($body['description']),
            'user_id' => $userId,
            'create_at' => date('Y-m-d H:i:s')
        ];

        $insertStatus = insert('portfolios', $dataInsert);

        if ($insertStatus){
//            Xử lý thêm ảnh dự án vào table portfolio_image
            $currentId = insertId(); //Lấy id vừa insert

            if (!empty($galleryArr)){
                foreach ($galleryArr as $item){

                    $dataImages = [
                        'portfolio_id' =>   $currentId,
                        'image' => trim($item),
                        'create_at' => date('Y-m-d H:i:s')
                    ];

                    insert('portfolio_images', $dataImages);
                }
            }
            setFlashData('msg', 'Thêm Blog thành công');
            setFlashData('msg_type', 'success');

            redirect('admin?module=portfolios'); //Chuyển hướng qua Blog danh sách

        }else{
            setFlashData('msg', 'Hệ thống đang gặp sự cố! Vui lòng thử lại sau.');
            setFlashData('msg_type', 'danger');

            redirect('admin?module=portfolios&action=add'); //Load lại Blog thêm nhóm người dùng
        }

    }else{

        //Có lỗi xảy ra
        setFlashData('msg', 'Vui lòng kiểm tra dữ liệu nhập vào');
        setFlashData('msg_type', 'danger');
        setFlashData('errors', $errors);
        setFlashData('old', $body);
        redirect('admin?module=portfolios&action=add'); //Load lại Blog nhóm người dùng
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
                    <label for="">Tên Blog</label>
                    <input type="text" class="form-control slug" name="name" placeholder="Tên Blog..." value="<?php echo old('name', $old); ?>"/>
                    <?php echo form_error('name', $errors, '<span class="error">', '</span>'); ?>
                </div>

                <div class="form-group">
                    <label for="">Đường dẫn tĩnh</label>
                    <input type="text" class="form-control render-slug" name="slug" placeholder="Đường dẫn tĩnh..." value="<?php echo old('slug', $old); ?>"/>
                    <?php echo form_error('slug', $errors, '<span class="error">', '</span>'); ?>
                    <p class="render-link"><b>Link</b>: <span></span></p>
                </div>

                <div class="form-group">
                    <label for="">Mô tả</label>
                    <textarea name="description" class="form-control" placeholder="Mô tả..."><?php  echo old('description', $old); ?></textarea>
                </div>

                <div class="form-group">
                    <label for="">Link video</label>
                    <input type="url" class="form-control" name="video" placeholder="Link video youtube..." value="<?php echo old('video', $old); ?>"/>
                    <?php echo form_error('video', $errors, '<span class="error">', '</span>'); ?>
                </div>

                <div class="form-group">
                    <label for="">Danh mục</label>
                    <select name="portfolio_category_id" class="form-control">
                        <option value="0">Chọn danh mục</option>
                        <?php
                        if (!empty($allPortfolio_categories)){
                            foreach ($allPortfolio_categories as $item){
                                ?>
                                <option value="<?php echo $item['id']; ?>"><?php echo $item['name']; ?></option>
                                <?php
                            }
                        }
                        ?>
                    </select>
                    <?php echo form_error('portfolio_category_id', $errors, '<span class="error">', '</span>'); ?>
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
<!--                Ảnh dự án-->
                <div class="form-group">
                    <label for="">Ảnh dự án</label>

                    <div class="gallery-images">
                        <?php 
                           $oldGallery = old('gallery', $old);

                           if(!empty($oldGallery)) {
                               $galleryErrors = $errors['gallery'];
                               foreach ($oldGallery as $key => $item) {
                                   ?>
                                   <div class="gallery-item">
                                       <div class="row">
                                           <div class="col-11">
                                               <div class="row ckfinder-group">
                                                   <div class="col-10">
                                                       <input type="text" class="form-control image-render" name="gallery[]" placeholder="Đường dẫn ảnh..." value="<?php echo (!empty($item)) ? $item :false  ?>"/>
                                                   </div>
                                                   <div class="col-2">
                                                       <button type="button" class="btn btn-success btn-block choose-image">Chọn ảnh</button>
                                                   </div>
                                               </div>
                                               <?php echo (!empty($galleryErrors['required'][$key])) ? '<span class="error">'.$galleryErrors['required'][$key].'</span>':false ?>
                                           </div>
                                           <div class="col-1">
                                               <a href="#" class="remove btn btn-danger btn-block"><i class="fa fa-times"></i> </a>
                                           </div>
                                       </div>

                                   </div><!--End .gallery-item-->
                                   <?php

                               }
                           }
                        ?>
                    </div>

                    <p style="margin-top: 10px;">
                        <a href="#" class="btn btn-warning btn-sm add-gallery">Thêm ảnh</a>
                    </p>

                </div>
                <hr>
                <button type="submit" class="btn btn-primary">Thêm mới</button>
                <a href="<?php echo getLinkAdmin('portfolios', 'lists'); ?>" class="btn btn-success">Quay lại</a>
            </form>
        </div>
    </section>


<?php
layout('footer', 'admin', $data);

