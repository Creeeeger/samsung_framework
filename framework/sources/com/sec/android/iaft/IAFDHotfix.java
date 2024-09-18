package com.sec.android.iaft;

import android.content.Context;
import android.util.Log;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* loaded from: classes6.dex */
public class IAFDHotfix {
    private static final String TAG = "IAFT_IAFDHotfix";

    public static boolean hotfix(Context context, int expType, String pkgName) {
        File dexLocation;
        boolean result = false;
        if (context == null) {
            Log.i(TAG, "context is null");
            return false;
        }
        try {
            String fileName = "iafdrepair_" + Integer.toString(expType) + "_dex.bin.enc";
            String path = context.getDataDir().getAbsolutePath() + "/iafd/dex/";
            dexLocation = new File(path, fileName);
            if (!dexLocation.exists()) {
                dexLocation = new File("/data/user/0/com.sec.android.iaft/iafd/dex/", fileName);
            }
        } catch (Exception e) {
            Log.i(TAG, "hotfix fail");
        }
        if (!dexLocation.exists()) {
            Log.i(TAG, dexLocation.toString() + " not found.");
            return false;
        }
        Log.i(TAG, "hotfix start");
        String tmpFile = IAFDRSAUtils.decryptFile(dexLocation.toString(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwaCLv6RvwU8gyFSbynkiPI1Yjb4O3PjCoTQOJadMly1MfePjpFFddlbHnEhyXZqK5znGPNCa/+grdCBV6bbdVf1DTjzcrleKeD6LwC5cioMMjtu91MqrZwDSyAvi6cpdiskEJ/ht+lDJGTdE5bpxJl5tQyy+HrXQk2wJFp3fTWwIDAQAB");
        PathClassLoader loader = new PathClassLoader(tmpFile, ClassLoader.getSystemClassLoader());
        Class hotfixClass = loader.loadClass("com.samsung.hotfix.hotfix");
        Method iafdrepairMethod = hotfixClass.getMethod("iafdrepair", Context.class, Integer.TYPE, String.class);
        Constructor<?> mc = hotfixClass.getConstructor(new Class[0]);
        Object obj = mc.newInstance(new Object[0]);
        result = ((Boolean) iafdrepairMethod.invoke(obj, context, Integer.valueOf(expType), pkgName)).booleanValue();
        File binFile = new File(tmpFile);
        if (binFile.exists()) {
            binFile.delete();
        }
        Log.i(TAG, "hotfix end");
        return result;
    }
}
