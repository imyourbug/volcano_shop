<?php

namespace App\Imports;

use App\Models\Product;
use App\Models\ProductImage;
use Exception;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\WithMappedCells;
use Throwable;

class ProductImport implements
    ToCollection,
    WithChunkReading
{

    /**
     * @param Collection $collection
     */
    public function collection(Collection $collection)
    {
        //
        $dataProduct = [];
        $i = 0;
        foreach ($collection as $row) {
            if ($i === 0) {
                $i = 1;
                continue;
            }
            // $row[31] = pro_code
            $dataProduct[$row[31]] = [
                'pro_alias' => (string)(!empty($dataProduct[$row[31]]['pro_alias'])
                    ? $dataProduct[$row[31]]['pro_alias'] : $row[0]),
                'pro_name' => (string)(!empty($dataProduct[$row[31]]['pro_name'])
                    ? $dataProduct[$row[31]]['pro_name'] : $row[1]),
                'pro_content' => (string)(!empty($dataProduct[$row[31]]['pro_content'])
                    ? $dataProduct[$row[31]]['pro_content'] : $row[2]),
                'pro_supplier' => (string)(!empty($dataProduct[$row[31]]['pro_supplier'])
                    ? $dataProduct[$row[31]]['pro_supplier'] : $row[3]),
                'pro_category' => (string)(!empty($dataProduct[$row[31]]['pro_category'])
                    ? $dataProduct[$row[31]]['pro_category'] : $row[4]),
                'pro_tag' => (string)(!empty($dataProduct[$row[31]]['pro_tag'])
                    ? $dataProduct[$row[31]]['pro_tag'] : $row[5]),
                'pro_active' => (string)(!empty($dataProduct[$row[31]]['pro_active'])
                    ? $dataProduct[$row[31]]['pro_active'] : $row[6]),
                'pro_attribute_1' => (string)(!empty($dataProduct[$row[31]]['pro_attribute_1'])
                    ? $dataProduct[$row[31]]['pro_attribute_1'] : $row[7]),
                'pro_value_1' => (string)(!empty($dataProduct[$row[31]]['pro_value_1'])
                    ? $dataProduct[$row[31]]['pro_value_1'] : $row[8]),
                'pro_attribute_2' => (string)(!empty($dataProduct[$row[31]]['pro_attribute_2'])
                    ? $dataProduct[$row[31]]['pro_attribute_2'] : $row[9]),
                'pro_value_2' => (string)(!empty($dataProduct[$row[31]]['pro_value_2'])
                    ? $dataProduct[$row[31]]['pro_value_2'] : $row[10]),
                'pro_attribute_3' => (string)(!empty($dataProduct[$row[31]]['pro_attribute_3'])
                    ? $dataProduct[$row[31]]['pro_attribute_3'] : $row[11]),
                'pro_value_3' => (string)(!empty($dataProduct[$row[31]]['pro_value_3'])
                    ? $dataProduct[$row[31]]['pro_value_3'] : $row[12]),
                'pro_sku' => (string)(!empty($dataProduct[$row[31]]['pro_sku'])
                    ? $dataProduct[$row[31]]['pro_sku'] : $row[13]),
                'pro_warehouse' => (string)(!empty($dataProduct[$row[31]]['pro_warehouse'])
                    ? $dataProduct[$row[31]]['pro_warehouse'] : $row[14]),
                'pro_number' => (string)(!empty($dataProduct[$row[31]]['pro_number'])
                    ? $dataProduct[$row[31]]['pro_number'] : $row[15]),
                'pro_allow' => (string)(!empty($dataProduct[$row[31]]['pro_allow'])
                    ? $dataProduct[$row[31]]['pro_allow'] : $row[16]),
                'pro_fulfillment' => (string)(!empty($dataProduct[$row[31]]['pro_fulfillment'])
                    ? $dataProduct[$row[31]]['pro_fulfillment'] : $row[17]),
                'pro_price' => (string)(!empty($dataProduct[$row[31]]['pro_price'])
                    ? $dataProduct[$row[31]]['pro_price'] : $row[18]),
                'pro_price_compare' => (string)(!empty($dataProduct[$row[31]]['pro_price_compare'])
                    ? $dataProduct[$row[31]]['pro_price_compare'] : $row[19]),
                'pro_require_shipping' => (string)(!empty($dataProduct[$row[31]]['pro_require_shipping'])
                    ? $dataProduct[$row[31]]['pro_require_shipping'] : $row[20]),
                'pro_vat' => (string)(!empty($dataProduct[$row[31]]['pro_vat'])
                    ? $dataProduct[$row[31]]['pro_vat'] : $row[21]),
                'pro_barcode' => (string)(!empty($dataProduct[$row[31]]['pro_barcode'])
                    ? $dataProduct[$row[31]]['pro_barcode'] : $row[22]),
                'pro_image' => !empty($dataProduct[$row[31]]['pro_image'])
                    ? array_merge($dataProduct[$row[31]]['pro_image'], [$row[23]]) : [$row[23]],
                'pro_image_title' => (string)(!empty($dataProduct[$row[31]]['pro_image_title'])
                    ? $dataProduct[$row[31]]['pro_image_title'] : $row[24]),
                'pro_seo_title' => (string)(!empty($dataProduct[$row[31]]['pro_seo_title'])
                    ? $dataProduct[$row[31]]['pro_seo_title'] : $row[25]),
                'pro_seo_description' => (string)(!empty($dataProduct[$row[31]]['pro_seo_description'])
                    ? $dataProduct[$row[31]]['pro_seo_description'] : $row[26]),
                'pro_weight' => (string)(!empty($dataProduct[$row[31]]['pro_weight'])
                    ? $dataProduct[$row[31]]['pro_weight'] : $row[27]),
                'pro_weight_unit' => (string)(!empty($dataProduct[$row[31]]['pro_weight_unit'])
                    ? $dataProduct[$row[31]]['pro_weight_unit'] : $row[28]),
                'pro_image_version' => (string)(!empty($dataProduct[$row[31]]['pro_image_version'])
                    ? $dataProduct[$row[31]]['pro_image_version'] : $row[29]),
                'pro_short_description' => (string)(!empty($dataProduct[$row[31]]['pro_short_description'])
                    ? $dataProduct[$row[31]]['pro_short_description'] : $row[30]),
                'pro_code' => (string)(!empty($dataProduct[$row[31]]['pro_code'])
                    ? $dataProduct[$row[31]]['pro_code'] : $row[31]),
                'pro_code_option' => (string)(!empty($dataProduct[$row[31]]['pro_code_option'])
                    ? $dataProduct[$row[31]]['pro_code_option'] : $row[32]),
            ];
        }
        $chunkSize = 200; // Adjust chunk size as needed (e.g., 500, 1000)
        $chunks = array_chunk($dataProduct, $chunkSize, true);
        $productImages = [];
        $dataInsertProduct = [];
        foreach ($chunks as $chunk) {
            foreach ($chunk as $key => $product) {
                // download image
                $path = 'images/' . $product['pro_code'];
                $this->makeDir($path);
                $j = 0;
                foreach ($product['pro_image'] as $pro_image) {
                    $fileName = $product['pro_alias'] . '-' . $j . '.jpg'; // Extract filename
                    $destinationPath = public_path($path . '/' . $fileName); // Define destination path
                    try {
                        $contents = file_get_contents($pro_image); // Download image contents
                        if ($contents !== false) {
                            file_put_contents($destinationPath, $contents); // Save image locally
                            $productImages[] = [
                                'pi_product_code' => $product['pro_code'],
                                'pi_slug' => $path . '/' . $fileName,
                            ];
                            $j++;
                        } else {
                            throw new Exception('Failed to download image: ' . $pro_image);
                        }
                    } catch (Throwable $e) {
                        continue;
                        // throw new Exception($e->getMessage());
                    }
                }
                $fileName = $product['pro_alias'] . '.jpg'; // Extract filename
                $destinationPath = public_path($path . '/' . $fileName); // Define destination path
                try {
                    $contents = file_get_contents($product['pro_image_version']); // Download image contents
                    if ($contents !== false) {
                        file_put_contents($destinationPath, $contents); // Save image locally
                        $product['pro_image_version'] = $path . '/' . $fileName;
                    } else {
                        throw new Exception('Failed to download image: ' . $pro_image);
                    }
                } catch (Throwable $e) {
                    continue;
                    // throw new Exception($e->getMessage());
                }
                unset($product['pro_image']);
                $product['created_at'] = now();
                $product['updated_at'] = now();
                $product['pro_active'] = 1;
                $product['pro_price'] = str_replace('.', '', $product['pro_price'] ?? '');
                $product['pro_price_compare'] = str_replace('.', '', $product['pro_price_compare'] ?? '');
                $dataInsertProduct[] = $product;
            }
        }
        DB::beginTransaction();
        try {
            // insert products
            Product::insert($dataInsertProduct);
            // insert product_images
            ProductImage::insert($productImages);
        } catch (Throwable $e) {
            DB::rollBack();
            throw new Exception($e->getMessage());
        }
        DB::commit();
    }

    public function chunkSize(): int
    {
        return 1000;
    }

    function makeDir($path)
    {
        return is_dir($path) || mkdir($path, 0777, true);
    }
}
