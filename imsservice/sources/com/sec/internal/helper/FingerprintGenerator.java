package com.sec.internal.helper;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class FingerprintGenerator {
    private static final String LOG_TAG = "FingerprintGenerator";

    public static String generateFromFile(File file, String str) {
        if (file != null && file.isFile()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(str);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr, 0, 1024);
                        if (read != -1) {
                            messageDigest.update(bArr, 0, read);
                        } else {
                            String upperCase = StrUtil.bytesToHexString(messageDigest.digest(), ":").toUpperCase();
                            fileInputStream.close();
                            return upperCase;
                        }
                    }
                } finally {
                }
            } catch (Exception e) {
                Log.e(LOG_TAG, "Unable to generate fingerprint by " + e);
            }
        }
        return null;
    }
}
