package com.sec.internal.helper.picturetool;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import android.util.Log;
import android.util.Size;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class BitmapExtractor {
    private static final String LOG_TAG = "BitmapExtractor";
    private static final Bitmap.Config PREFERRED_IMAGE_CONFIG = Bitmap.Config.RGB_565;
    private static final Size MINI_SIZE = new Size(512, 384);

    public Bitmap extractFromImage(File file, int i) throws NullPointerException, IllegalArgumentException, IOException {
        FileInputStream fileInputStream;
        Throwable th;
        BitmapFactory.Options createData;
        Log.d(LOG_TAG, "extractBitmapFromImage(image=" + file + ", scale=" + i + ")");
        try {
            createData = BitmapOptions.createData(i, PREFERRED_IMAGE_CONFIG);
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th2) {
            fileInputStream = null;
            th = th2;
        }
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream, null, createData);
            closeStream(fileInputStream);
            return decodeStream;
        } catch (Throwable th3) {
            th = th3;
            closeStream(fileInputStream);
            throw th;
        }
    }

    public Bitmap extractFromVideo(File file) throws NullPointerException, IOException {
        Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(file, MINI_SIZE, null);
        if (createVideoThumbnail == null) {
            throwIOE("invalid input:%s", file.getAbsolutePath());
        }
        Log.d(LOG_TAG, "extractFromVideo:: Exit");
        return createVideoThumbnail;
    }

    private static void closeStream(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                throw new IOException("Can't close stream: e=" + e);
            }
        }
    }

    private static void throwIOE(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }
}
