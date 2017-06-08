<?php
//tambahkan koneksi database
include 'koneksi.php';

if (isset($_POST['id_kategori'])) {
$id_kategori = ($_POST['id_kategori']);

$sql = "SELECT * FROM tb_isi,tb_kategori where tb_isi.id_kategori=tb_kategori.id_kategori AND tb_isi.id_kategori='$id_kategori'";

//buatkan variabel menampung nilai array
$response = array();

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
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
}
$conn->close();
?>
