
<!-- page content -->
<div class="right_col" role="main">
  <div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="x_panel">
        <div class="x_title">
          <h2>Responsive example<small>Users</small></h2>
          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Settings 1</a>
                </li>
                <li><a href="#">Settings 2</a>
                </li>
              </ul>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">

          <table  class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>No.</th>
                <th>KODE</th>
                <th>MATA KULIAH</th>
                <th>Nilai</th>
                <th>Angka Mutu</th>
                <th>SKS</th>
                <th>Hasil</th>
              </tr>
            </thead>
            <tbody>

              <?php
              $no=0;
              $csks=0;
              $chasil=0;
              foreach ($data->result_array() as $i) : 
                $no++;
                $kode=$i['matkul_kode'];
                $mk=$i['matkul_nama'];
                $nilai=$i['kuliah_nilai'];
                $sks=$i['matkul_sks'];

                  if($nilai=='A'){
                    $angka_mutu='4';
                  }
                  else if($nilai=='B'){
                    $angka_mutu='3';
                  }
                  else if($nilai=='C'){
                    $angka_mutu='2';
                  }
                  else if($nilai=='D'){
                    $angka_mutu='1';
                  }
                  else {
                    $angka_mutu='0';
                  }
                $hasil=$angka_mutu*$sks;
                $csks+=$sks;
                $chasil+=$hasil;
                ?>
                <tr>
                  <td><?php echo $no; ?></td>
                  <td><?php echo $kode; ?> </td>
                  <td><?php echo $mk; ?> </td>
                  <td><?php echo $nilai; ?> </td>
                  <td><?php echo $angka_mutu; ?> </td>
                  <td><?php echo $sks; ?> </td>
                  <td><?php echo $hasil; ?> </td>
                </tr>

                <?php 
              endforeach;
              $ipk=$chasil/$csks;
              ?>

            </tbody>

          </table>
          <div class="col-md-12">
            <div class="col-md-9"> 
              <ul class="quick-list">
                <li><i class="fa fa-calendar-o"></i><a href="#">Jumlah Mutu</a> </li>
                <li><i class="fa fa-bars"></i><a href="#">Jumlah Kredit Kumulatif</a></li>
                <li><i class="fa fa-bar-chart"></i><a href="#">IPK</a> </li>
              </ul>
            </div>
            <div class="col-md-3">
              <ul class="quick-list">
                <li><i class="fa fa-calendar-o"></i><a href="#"><?php  echo $chasil;?></a> </li>
                <li><i class="fa fa-bars"></i><a href="#"><?php  echo $csks;?></a></li>
                <li><i class="fa fa-bar-chart"></i><a href="#"><?php  echo $ipk;?></a> </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /page content -->
