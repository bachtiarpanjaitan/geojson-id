## GeoJson of Indonesia Administrative

#### Data
Keterangan file pada folder data sebagai berikut:
- adm1 : Wilayah administratif level-1 (Provinsi)
- adm2 : Wilayah administratif level-2 (Kabupaten/kota)
- adm3 : Wilayah administratif level-3 (Kecamatan)
- adm4 : Wilayah administratif level-4 (Kelurahan)

#### Cara Menggunakan
Ektrak terlebih dahulu semua data yang di kompress pada folder **data**

Import struktur tabel menggunakan query yang telah didefenisikan di folder **structure**, kemudian anda dapat mengimport data ke tabel yang ada pada folder **data** sesuai dengan nama filenya. 
> Pada folder **data** untuk wilayah administratif level ke-4 (Kelurahan) telah dibagi menjadi 3 file
 
Semua data dari adm1 hingga adm4 untuk properti **coordinates** telah di stringify sebanyak 2 kali, sehingga dalam praktek pemakaiannya anda diharapkan mem-parse value dari properti **coordinates** kedalam bentuk JSON.


##### Contoh
Properti **coordinates** setiap data pada table harusnya memiliki format sebagai berikut.
```
{
    shape_leng: '',
    shape_area: '',
    name: '',
    code: '',
    coordinates: '', //data diencode
    x: '',
    y: '',
    id: ''
    ...
}

```
Pada tahap pertama anda harus mem-parse properti **coordinates**, sehingga mendapat struktur json **coordinates** seperti berikut:

```
{
    type: "FeatureCollection",
    features: [
        {
            type: "Feature",
            properties: {},
            geometry: '' . //data di encode 
        }
    ]
}

```
Pada tahap kedua anda juga harus mem-parse properti **geometry**, sehingga anda akan mendapat struktur **geometry** seperti berikut:

```
{
    type: "Polygon",
    coordinates: []
}

```

Pada properti array **features** dapat dilihat properti **properties** dimana dapat diisi dengan data untuk keperluan di maps nantinya seperti content, color, ariaLabel dan sebagainya.