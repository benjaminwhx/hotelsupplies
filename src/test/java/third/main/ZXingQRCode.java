package third.main;

import com.alibaba.fastjson.JSONObject;
import com.google.zxing.*;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.pdf417.PDF417Writer;
import org.junit.Test;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by piqiu on 2/18/16.
 * 二维码生成解析
 */
public class ZXingQRCode {

    private final String filePath = "/Users/piqiu1/Desktop/";
    private final String fileName = "zxing.png";
    private final String imageSuffix = "png";

    /**
     * 二维码生成
     * @throws WriterException
     * @throws IOException
     */
    @Test
    public void testEncode() throws WriterException, IOException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("zxing", "https://github.com/zxing/zxing/tree/zxing-3.0.0/javase/src/main/java/com/google/zxing");
        jsonObject.put("author", "shihy");
        String content = jsonObject.toJSONString();
        int width = 200;    // 图像宽度
        int height = 200;   // 图像高度
        Map<EncodeHintType, Object> hints = new HashMap<>();
        hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
        BitMatrix bitMatrix = new MultiFormatWriter().encode(content,
                BarcodeFormat.QR_CODE, width, height, hints);// 生成矩阵
        Path path = FileSystems.getDefault().getPath(filePath, fileName);
        MatrixToImageWriter.writeToPath(bitMatrix, imageSuffix, path);// 输出图像
        System.out.println("输出成功.");
    }

    /**
     * 条形码生成
     * @throws WriterException
     * @throws IOException
     */
    @Test
    public void testEncode2() throws WriterException, IOException {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("zxing", "https://github.com/zxing/zxing/tree/zxing-3.0.0/javase/src/main/java/com/google/zxing");
        jsonObject.put("author", "shihy");
        String content = jsonObject.toJSONString();
        int width = 200;    // 图像宽度
        int height = 50;   // 图像高度
        PDF417Writer pdf417Writer = new PDF417Writer();
        Map<EncodeHintType, Object> hints = new HashMap<>();
        hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
        BitMatrix bitMatrix = pdf417Writer.encode(content, BarcodeFormat.PDF_417, width, height, hints);
        Path path = FileSystems.getDefault().getPath(filePath, fileName);
        MatrixToImageWriter.writeToPath(bitMatrix, imageSuffix, path);// 输出图像
        System.out.println("输出成功.");
    }

    /**
     * get the QRCode content by image.
     */
    @Test
    public void testDecode() {
        String file = filePath + fileName;
        BufferedImage image;
        try {
            image = ImageIO.read(new File(file));
            LuminanceSource source = new BufferedImageLuminanceSource(image);
            Binarizer binarizer = new HybridBinarizer(source);
            BinaryBitmap binaryBitmap = new BinaryBitmap(binarizer);
            Map<DecodeHintType, Object> hints = new HashMap<>();
            hints.put(DecodeHintType.CHARACTER_SET, "UTF-8");
            Result result = new MultiFormatReader().decode(binaryBitmap, hints);// 对图像进行解码
            JSONObject content = JSONObject.parseObject(result.getText());
            System.out.println("图片中内容：  " + content);
            System.out.println("author： " + content.getString("author"));
            System.out.println("zxing：  " + content.getString("zxing"));
            System.out.println("图片中格式：  ");
            System.out.println("encode： " + result.getBarcodeFormat());
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NotFoundException e) {
            e.printStackTrace();
        }
        /**
         * 图片中内容：  {"author":"shihy","zxing":"https://github.com/zxing/zxing/tree/zxing-3.0.0/javase/src/main/java/com/google/zxing"}
         * author： shihy
         * zxing：  https://github.com/zxing/zxing/tree/zxing-3.0.0/javase/src/main/java/com/google/zxing
         * 图片中格式：
         * encode： QR_CODE
         */
    }
}
