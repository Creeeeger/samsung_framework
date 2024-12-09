package com.sec.internal.ims.servicemodules.im.util;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class FileDurationUtil {
    private static final String LOG_TAG = "FileDurationUtil";

    public static int getFileDurationTime(String str) {
        IMSLog.i(LOG_TAG, "getFileDurationTime for filePath=" + IMSLog.checker(str));
        if (str == null) {
            return -1;
        }
        File file = new File(str);
        if (file.exists()) {
            return (int) getDuration(getMediaMetadataRetriever(file));
        }
        return -1;
    }

    public static int getFileDurationTime(Context context, Uri uri) {
        IMSLog.i(LOG_TAG, "getFileDurationTime for contentUri=" + IMSLog.checker(uri));
        if (context == null || uri == null) {
            return -1;
        }
        return (int) getDuration(getMediaMetadataRetriever(context, uri));
    }

    private static MediaMetadataRetriever getMediaMetadataRetriever(File file) {
        FileInputStream fileInputStream;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            fileInputStream = new FileInputStream(file);
        } catch (IOException | RuntimeException e) {
            e.printStackTrace();
        }
        try {
            mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            return mediaMetadataRetriever;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static MediaMetadataRetriever getMediaMetadataRetriever(Context context, Uri uri) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(context, uri);
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
        return mediaMetadataRetriever;
    }

    private static long getDuration(MediaMetadataRetriever mediaMetadataRetriever) {
        long j = 0;
        try {
            j = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
            IMSLog.i(LOG_TAG, "getFileDurationTime, time = " + j);
            return j;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return j;
        }
    }
}
