package com.sec.internal.helper.picturetool;

import android.graphics.BitmapFactory;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageDimensionsExtractor {
    private static final String LOG_TAG = "ImageDimensionsExtractor";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable] */
    public Pair<Integer, Integer> extract(File file) {
        Throwable th;
        FileInputStream fileInputStream;
        BitmapFactory.Options options;
        String str = LOG_TAG;
        ?? sb = new StringBuilder();
        sb.append("getImageDimensions:");
        ?? absolutePath = file.getAbsolutePath();
        sb.append(absolutePath);
        Log.d(str, sb.toString());
        Pair<Integer, Integer> pair = null;
        try {
            try {
                options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                fileInputStream = new FileInputStream(file);
            } catch (FileNotFoundException e) {
                e = e;
                fileInputStream = null;
            } catch (Throwable th2) {
                absolutePath = 0;
                th = th2;
                closeStream(absolutePath);
                throw th;
            }
            try {
                BitmapFactory.decodeStream(fileInputStream, null, options);
                pair = Pair.create(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
                absolutePath = fileInputStream;
            } catch (FileNotFoundException e2) {
                e = e2;
                e.printStackTrace();
                absolutePath = fileInputStream;
                closeStream(absolutePath);
                return pair;
            }
            closeStream(absolutePath);
            return pair;
        } catch (Throwable th3) {
            th = th3;
            closeStream(absolutePath);
            throw th;
        }
    }

    private static void closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.d(LOG_TAG, "closeStream: e=" + e);
            }
        }
    }
}
