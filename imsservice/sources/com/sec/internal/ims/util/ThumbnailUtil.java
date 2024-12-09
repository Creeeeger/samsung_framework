package com.sec.internal.ims.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.util.Log;
import android.util.Size;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class ThumbnailUtil {
    protected static final int HIGH_QUALITY = 100;
    private static final String LOG_TAG = "ThumbnailUtil";
    public static final int MAX_BYTE_COUNT = 5120;
    public static final int MAX_BYTE_COUNT_HIGH = 51200;
    private static final int MAX_THUMBNAIL_SIZE = 512;
    protected static final int QUALITY = 95;
    protected static final long VIDEO_FRAME_TIME = 15000000;

    public static byte[] getThumbnailByteArray(Context context, Uri uri) {
        Log.d(LOG_TAG, "getThumbnailByteArray() contentUri : " + uri);
        Bitmap thumbnailBitmap = getThumbnailBitmap(context, uri);
        if (thumbnailBitmap == null) {
            return null;
        }
        return getCompressedBitmapByteArray(thumbnailBitmap, 95);
    }

    public static byte[] getVideoThumbnailByteArray(Context context, Uri uri, int i) {
        Log.d(LOG_TAG, "getVideoThumbnailByteArray() contentUri : " + uri);
        Bitmap thumbnailBitmapFromVideo = getThumbnailBitmapFromVideo(context, uri);
        if (thumbnailBitmapFromVideo == null) {
            return null;
        }
        if (thumbnailBitmapFromVideo.getByteCount() > i) {
            thumbnailBitmapFromVideo = getScaledBitmap(thumbnailBitmapFromVideo, i);
        }
        return getCompressedBitmapByteArray(thumbnailBitmapFromVideo, 100);
    }

    private static Bitmap getThumbnailBitmap(Context context, Uri uri) {
        Log.d(LOG_TAG, "getThumbnailBitmap() contentUri : " + uri);
        Bitmap loadThumbnail = loadThumbnail(context, uri);
        if (loadThumbnail == null) {
            return null;
        }
        Bitmap.Config config = loadThumbnail.getConfig();
        Bitmap.Config config2 = Bitmap.Config.RGB_565;
        if (config != config2) {
            try {
                loadThumbnail = loadThumbnail.copy(config2, false);
            } catch (OutOfMemoryError e) {
                e.printStackTrace();
            }
        }
        return loadThumbnail.getByteCount() > 5120 ? getScaledBitmap(loadThumbnail, MAX_BYTE_COUNT) : loadThumbnail;
    }

    private static Bitmap loadThumbnail(Context context, Uri uri) {
        try {
            return context.getContentResolver().loadThumbnail(uri, new Size(MAX_THUMBNAIL_SIZE, MAX_THUMBNAIL_SIZE), null);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static Bitmap getThumbnailBitmapFromVideo(Context context, Uri uri) {
        MediaMetadataRetriever mediaMetadataRetriever;
        Bitmap bitmap = null;
        try {
            mediaMetadataRetriever = new MediaMetadataRetriever();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (RuntimeException e2) {
            Log.e(LOG_TAG, "getVideoThumbnailByteArray() failure : " + e2);
        }
        try {
            mediaMetadataRetriever.setDataSource(context, uri);
            long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9)) * 1000;
            long j = VIDEO_FRAME_TIME;
            if (VIDEO_FRAME_TIME > parseLong) {
                j = parseLong / 2;
            }
            bitmap = mediaMetadataRetriever.getFrameAtTime(j);
            mediaMetadataRetriever.close();
            return bitmap;
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static Bitmap getScaledBitmap(Bitmap bitmap, int i) {
        if (i <= 0) {
            i = MAX_BYTE_COUNT;
        }
        double max = Math.max(Math.sqrt(bitmap.getByteCount() / i), 1.0d);
        int width = (int) (bitmap.getWidth() / max);
        int height = (int) (bitmap.getHeight() / max);
        Log.d(LOG_TAG, "getScaledBitmap() original width: " + bitmap.getWidth() + ", height: " + bitmap.getHeight() + ", scale: " + max + ", scaled width: " + width + ", height: " + height);
        return Bitmap.createScaledBitmap(bitmap, width, height, false);
    }

    private static byte[] getCompressedBitmapByteArray(Bitmap bitmap, int i) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
