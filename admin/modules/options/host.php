<?php
if (!defined('_INCODE'))
    die('Access Deined...');
$data = [
    'pageTitle' => 'Thiết lập dự án'
];

layout('header', 'admin', $data);
layout('sidebar', 'admin', $data);
layout('breadcrumb', 'admin', $data);
if (isPost()) {
    $host = getOption('host');
    $optArr = getRaw("SELECT opt_key,opt_value FROM options WHERE opt_value LIKE '%$host%'");
    $data = [];
    $newHost = $_SERVER['HTTP_HOST'];
    foreach ($optArr as $key => $opt) {
        $optKey = $opt['opt_key'];
        $optValue = $opt['opt_value'];
        $optValue = str_replace($host, $newHost, $optValue);
        $data[$optKey] = $optValue;
    }
    updateOptions($data);
}
$msg = getFlashData('msg');
$msgType = getFlashData('msg_type');
$errors = getFlashData('errors');

?>
<section class="content">
    <div class="container-fluid">
        <form action="" method="post">
            <?php
            getMsg($msg, $msgType);
            ?>
            <h5>Thiết lập tên server host</h5>
            <div class="form-group">
                <label for="">
                    <?php echo getOption('host', 'label'); ?>
                </label>
                <input type="text" class="form-control" name="host"
                    placeholder="<?php echo getOption('host', 'label'); ?>..."
                    value="<?php echo getOption('host'); ?>" />
                <?php echo form_error('host', $errors, '<span class="error">', '</span>'); ?>
                <span>Server Host hiện tại là: <strong><a href="<?php echo $_SERVER['HTTP_HOST']?>"><?php echo $_SERVER['HTTP_HOST']?></a></strong></span>
            </div>
            <button type="submit" class="btn btn-primary">Lưu thay đổi</button>

        </form>
    </div>
</section>

<?php
layout('footer', 'admin', $data);