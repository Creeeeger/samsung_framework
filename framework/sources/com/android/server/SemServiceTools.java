package com.android.server;

import android.text.format.DateFormat;
import android.util.Log;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

/* loaded from: classes5.dex */
public class SemServiceTools {
    public static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', DateFormat.CAPITAL_AM_PM, 'B', 'C', 'D', DateFormat.DAY, 'F'};
    private static final String TAG = "SEC_ESE_ServiceTools";

    public static String getHexString(byte[] in) {
        StringBuilder sb = new StringBuilder();
        for (byte b : in) {
            sb.append(Integer.toString((b & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }

    public static String getHexString(byte[] in, int startPoint, int index) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < index; i++) {
            sb.append(Integer.toString((in[i + startPoint] & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }

    public static String bytesToHex(byte[] data) {
        if (data != null) {
            char[] chars = new char[data.length * 2];
            for (int i = 0; i < data.length; i++) {
                char[] cArr = HEX_CHARS;
                chars[i * 2] = cArr[(data[i] & 240) >>> 4];
                chars[(i * 2) + 1] = cArr[data[i] & 15];
            }
            return new String(chars);
        }
        return null;
    }

    public static String byteToHex(byte data) {
        char[] cArr = HEX_CHARS;
        char[] array = {cArr[(data >> 4) & 15], cArr[data & 15]};
        return new String(array);
    }

    public static byte[] hexToBytes(String str) {
        if (str == null || str.length() < 2) {
            return null;
        }
        int len = str.length() / 2;
        byte[] buffer = new byte[len];
        for (int i = 0; i < len; i++) {
            buffer[i] = (byte) Integer.parseInt(str.substring(i * 2, (i * 2) + 2), 16);
        }
        return buffer;
    }

    public static String readFileBytes(Path paths) {
        try {
            byte[] fileData = Files.readAllBytes(paths);
            return bytesToHex(fileData);
        } catch (IOException e) {
            Log.e(TAG, "IOException : " + e);
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "Exception : " + e2);
            return null;
        }
    }
}
