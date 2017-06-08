<?php
//tambahkan koneksi database
include 'koneksi.php';

$sql = "SELECT * FROM tb_isi";

//buatkan variabel menampung nilai array
$response = array();

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data array
    $response['berita'] = array();
    while($row = $result->fetch_assoc()) {
    	//buatkan array untuk menampung data sementara
    	$data = array();
        $data['isi_judul'] = $row['isi_judul'];
        $data['isi_berita'] = $row['isi_berita'];
    	$data['isi_gambar'] = $row['isi_gambar'];




    	array_push($response['berita'], $data);
        
    }

    $response['status'] = '1';
    $response['msg'] = 'Data semua berita';

    echo json_encode($response);

} else {
        $response['status'] = '0';
    $response['msg'] = ' Tidak Ada Data semua berita';

    echo json_encode($response);
}
$conn->close();
?>
