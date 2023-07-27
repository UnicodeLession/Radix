<?php
$homeSlide = getOption('home_slide');
if (!empty($homeSlide)){
    $homeSlideArr = json_decode($homeSlide, true);
    if (!empty($homeSlideArr)){

        ?>
        <!-- Hero Area -->
        <section id="hero-area" class="hero-area">
            <!-- Slider -->
            <div class="slider-area">
                <?php
                foreach ($homeSlideArr as $item):
                    $classItemSlide = '';
                    if (!empty($item['slide_position'])){
                        if ($item['slide_position']=='center'){
                            $classItemSlide = 'slider-center';
                        }elseif ($item['slide_position']=='right'){
                            $classItemSlide = 'slider-right';
                        }
                    }
                    ?>
                    <!-- Single Slider -->
                    <div class="single-slider <?php echo !empty($classItemSlide)?$classItemSlide:false; ?>" style="background-image:url('<?php echo _WEB_HOST_ROOT.$item['slide_bg']; ?>')">
                        <div class="container">
                            <div class="row">
                                <?php
                                $allowTwoCol = false;
                                $classCol = 'col-lg-10 offset-lg-1 col-12';
                                if (!empty($item['slide_image_1']) || !empty($item['slide_image_2'])){
                                    $allowTwoCol = true;
                                    $classCol = 'col-lg-7 col-md-6 col-12';
                                }

                                ?>
<!--                                Nếu slider-right (text về phía phải) thì ảnh phải hiện trước text còn k thì hiện sau text-->
                                <?php
                                if ($allowTwoCol && $classItemSlide == 'slider-right'):
                                    ?>
                                    <div class="col-lg-5 col-md-6 col-12">
                                        <!-- Image Gallery -->
                                        <div class="image-gallery">
                                            <?php if (!empty($item['slide_image_1'])): ?>
                                                <div class="single-image">
                                                    <img src="<?php echo _WEB_HOST_ROOT.$item['slide_image_1']; ?>" alt="#">
                                                </div>
                                            <?php endif; ?>
                                            <?php if (!empty($item['slide_image_2'])): ?>
                                                <div class="single-image two">
                                                    <img src="<?php echo _WEB_HOST_ROOT.$item['slide_image_2']; ?>" alt="#">
                                                </div>
                                            <?php endif; ?>
                                        </div>
                                        <!--/ End Image Gallery -->
                                    </div>
                                <?php endif; ?>
                                <!-- Slider Text -->
                                <div class="<?php echo $classCol; ?>">
                                    <div class="slider-text">
                                        <?php
                                        if (!empty($item['slide_title'])):
                                            ?>
                                            <h1><?php echo html_entity_decode($item['slide_title']); ?></h1>
                                        <?php endif; ?>
                                        <?php
                                        if (!empty($item['slide_desc'])):
                                            ?>
                                            <p><?php echo $item['slide_desc']; ?></p>
                                        <?php endif; ?>
                                        <div class="button">
                                            <?php if (!empty($item['slide_button_link'])): ?>
                                                <a href="<?php echo $item['slide_button_link']; ?>" class="btn"><?php echo (!empty($item['slide_button_text']))?$item['slide_button_text']:'Xem thêm'; ?></a>
                                            <?php endif; ?>
                                            <?php if (!empty($item['slide_video'])): ?>
                                                <a href="<?php echo $item['slide_video']; ?>" class="btn video video-popup mfp-fade"><i class="fa fa-play"></i>Video</a>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Slider Text -->

                                <!--Nếu slider-right (text về phía phải) thì ảnh phải hiện trước text còn k thì hiện sau text-->
                                <?php
                                if ($allowTwoCol && $classItemSlide != 'slider-right'):
                                    ?>
                                    <div class="col-lg-5 col-md-6 col-12">
                                        <!-- Image Gallery -->
                                        <div class="image-gallery">
                                            <?php if (!empty($item['slide_image_1'])): ?>
                                                <div class="single-image">
                                                    <img src="<?php echo $item['slide_image_1']; ?>" alt="#">
                                                </div>
                                            <?php endif; ?>
                                            <?php if (!empty($item['slide_image_2'])): ?>
                                                <div class="single-image two">
                                                    <img src="<?php echo $item['slide_image_2']; ?>" alt="#">
                                                </div>
                                            <?php endif; ?>
                                        </div>
                                        <!--/ End Image Gallery -->
                                    </div>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <!--/ End Single Slider -->
                <?php endforeach; ?>

            </div>
            <!--/ End Slider -->
        </section>
        <!--/ End Hero Area -->
        <?php
    }
}
?>