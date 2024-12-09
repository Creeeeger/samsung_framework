package com.sec.internal.ims.util;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import java.io.File;

/* loaded from: classes.dex */
public class StorageEnvironment {
    private static String LOG_TAG = "StorageEnvironment";

    public static String generateStorePath(Context context, String str) {
        String name = new File(getDefaultStoreDirectory(context, 1), str).getName();
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf == -1) {
            lastIndexOf = name.length();
        }
        String substring = name.substring(0, lastIndexOf);
        String substring2 = name.substring(lastIndexOf);
        int i = 1;
        while (new File(getDefaultStoreDirectory(context, 1), str).exists()) {
            str = substring + "(" + i + ")" + substring2;
            i++;
        }
        return new File(getDefaultStoreDirectory(context, 1), str).getAbsolutePath();
    }

    public static boolean isSdCardStateFine(Context context, long j) {
        return getSdCardFreeSpace(getExternalStorageDirectoryCreateIfNotExists(context, Environment.DIRECTORY_PICTURES)) > j;
    }

    private static String getDefaultStoreDirectory(Context context, int i) {
        String str = Environment.DIRECTORY_PICTURES;
        if (i != 1) {
            if (i == 2) {
                str = Environment.DIRECTORY_MOVIES;
            } else {
                str = Environment.DIRECTORY_DOWNLOADS;
            }
        }
        return getExternalStorageDirectoryCreateIfNotExists(context, str);
    }

    private static String getExternalStorageDirectoryCreateIfNotExists(Context context, String str) {
        File externalFilesDir = context.getExternalFilesDir(str);
        if (externalFilesDir.mkdirs() || externalFilesDir.isDirectory()) {
            return externalFilesDir.getPath();
        }
        Log.d(LOG_TAG, "Environment " + str + " Error");
        return null;
    }

    private static long getSdCardFreeSpace(String str) {
        if (str == null) {
            Log.e(LOG_TAG, "path == null");
            return -1L;
        }
        if (!new File(str).exists()) {
            Log.e(LOG_TAG, "path doesn't exist: '" + str + "'");
            return -1L;
        }
        return new StatFs(str).getAvailableBytes();
    }
}
