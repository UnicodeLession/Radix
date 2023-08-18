<?php
if (!defined('_INCODE')) die('Access Deined...');

function query($sql, $data=[], $statementStatus=false){
    global $conn;
    $query = false;
    try{
        $statement = $conn->prepare($sql);

        if (empty($data)){
            $query = $statement->execute();
        }else{
            $query = $statement->execute($data);
        }

    }catch (Exception $exception){

        require_once 'modules/errors/database.php'; //Import error
        die(); //Dừng hết chương trình
    }

    if ($statementStatus && $query){
        return $statement;
    }

    return $query;
}

function insert($table, $dataInsert){

    $keyArr = array_keys($dataInsert);
    $fieldStr = implode(', ', $keyArr);
    $valueStr = ':'.implode(', :', $keyArr);

    $sql = 'INSERT INTO `'.$table.'`('.$fieldStr.') VALUES('.$valueStr.')';

    return query($sql, $dataInsert);
}

function update($table, $dataUpdate, $condition=''){

    $updateStr = '';
    foreach ($dataUpdate as $key=>$value){
        $updateStr.=$key.'=:'.$key.', ';
    }

    $updateStr = rtrim($updateStr, ', ');

    if (!empty($condition)){
        $sql = 'UPDATE `'.$table.'` SET '.$updateStr.' WHERE '.$condition;
    }else{
        $sql = 'UPDATE `'.$table.'` SET '.$updateStr;
    }

    return query($sql, $dataUpdate);
}

function delete($table, $condition=''){
    if (!empty($condition)){
        $sql = "DELETE FROM `$table` WHERE $condition";
    }elsE{
        $sql = "DELETE FROM `$table`";
    }

    return query($sql);
}

//Lấy dữ liệu từ câu lệnh SQL - Lấy tất cả
function getRaw($sql){
    $statement = query($sql, [], true);
    if (is_object($statement)){
        $dataFetch = $statement->fetchAll(PDO::FETCH_ASSOC);
        return $dataFetch;
    }

    return false;
}

//Lấy dữ liệu từ câu lệnh SQL - Lấy 1 bản ghi
function firstRaw($sql){
    $statement = query($sql, [], true);
    if (is_object($statement)){
        $dataFetch = $statement->fetch(PDO::FETCH_ASSOC);
        return $dataFetch;
    }

    return false;
}

//Lấy dữ liệu theo table, field, condition
function get($table, $field='*', $condition=''){
    $sql = 'SELECT '.$field.' FROM '.$table;
    if (!empty($condition)){
        $sql.=' WHERE '.$condition;
    }

    return getRaw($sql);
}

function first($table, $field='*', $condtion=''){
    $sql = 'SELECT '.$field.' FROM '.$table;
    if (!empty($condition)){
        $sql.=' WHERE '.$condition;
    }

    return firstRaw($sql);
}

//function bổ sung
//lấy số dòng câu truy vấn
function getRows($sql){
    $statement = query($sql, [], true);
    if (!empty($statement)){
        return $statement->rowCount();
    }
}

//Lấy id vừa insert
function insertId(){
    global $conn;
    return $conn->lastInsertId();
}

//Lấy id tiếp theo sẽ được thêm sau khi insert dữ liệu của AUTO_INCREMENT
/*
 * vd : có 1 user thì id là 1
 * thêm 1 user nữa thì id sẽ là 2 nhưng sau khi xóa đi thì id tiếp theo insert dữ liệu vẫn là 3
 * sau khi xóa id 2 đó thì return của hàm dưới sẽ trả về 3: là id tiếp theo sẽ nếu được insert
 *
 * dùng để show phần demo link trong các file add.php của admin/modules
 * */

function getAutoIncrementValue($table) {
    global $conn;

    // Refresh the AUTO_INCREMENT value manually
    $refreshSql = "ANALYZE TABLE `$table`";
    query($refreshSql);

    // Get the next AUTO_INCREMENT value
    $sql = "SELECT `AUTO_INCREMENT` FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'phpbasic' AND TABLE_NAME = '$table'";
    $nextAutoIncrement = query($sql, [], true)->fetchColumn();

    return $nextAutoIncrement;
}