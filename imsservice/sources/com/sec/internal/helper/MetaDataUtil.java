package com.sec.internal.helper;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.sec.internal.constants.ims.servicemodules.sms.SmsMessage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class MetaDataUtil {
    private static String checkMetaInfo(String str, String str2) {
        String substring = str.substring(str.lastIndexOf(".") + 1);
        return "video/mp4".equalsIgnoreCase(str2) ? ("3gp".equalsIgnoreCase(substring) || SmsMessage.FORMAT_3GPP.equalsIgnoreCase(substring) || "3g2".equalsIgnoreCase(substring)) ? "video/3gpp" : str2 : str2;
    }

    public static String getContentType(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
                String checkMetaInfo = checkMetaInfo(file.getName(), mediaMetadataRetriever.extractMetadata(12));
                fileInputStream.close();
                return checkMetaInfo;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | RuntimeException unused) {
            return null;
        }
    }

    public static String getContentType(Context context, String str, Uri uri) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(context, uri);
            return checkMetaInfo(str, mediaMetadataRetriever.extractMetadata(12));
        } catch (Exception unused) {
            return null;
        }
    }
}
