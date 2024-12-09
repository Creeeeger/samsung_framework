package com.sec.internal.ims.core.iil;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class IpcUtil {
    private IpcUtil() {
    }

    public static byte[] arrayListToPrimitiveArray(byte[] bArr) {
        return arrayListToPrimitiveArray(primitiveArrayToArrayList(bArr));
    }

    public static byte[] arrayListToPrimitiveArray(ArrayList<Byte> arrayList) {
        if (arrayList.size() <= 2) {
            return null;
        }
        int byteValue = arrayList.get(0).byteValue() & 255;
        int byteValue2 = arrayList.get(1).byteValue() & 255;
        if (byteValue2 != 0) {
            byteValue += byteValue2 << 8;
        }
        byte[] bArr = new byte[byteValue];
        for (int i = 0; i < byteValue - 2; i++) {
            bArr[i] = arrayList.get(i + 2).byteValue();
        }
        return bArr;
    }

    public static ArrayList<Byte> primitiveArrayToArrayList(byte[] bArr) {
        ArrayList<Byte> arrayList = new ArrayList<>(bArr.length);
        for (byte b : bArr) {
            arrayList.add(Byte.valueOf(b));
        }
        return arrayList;
    }

    public static String dumpHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        if (bArr == null) {
            return "";
        }
        for (byte b : bArr) {
            stringBuffer.append(String.format("%02X ", Byte.valueOf(b)));
        }
        return stringBuffer.toString();
    }
}
