package com.samsung.android.media;

import android.os.ParcelFileDescriptor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class SEFJNI {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addFastSEFData(String str, String str2, int i, byte[] bArr, int i2, byte[] bArr2, int i3, int i4, int i5);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addFastSEFDataFile(String str, String str2, int i, byte[] bArr, int i2, String str3, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addSEFData(String str, String str2, int i, byte[] bArr, int i2, byte[] bArr2, int i3, int i4, int i5);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addSEFDataAddTag(String str, String str2, int i, byte[] bArr, int i2, byte[] bArr2, int i3, int i4, int i5);

    public static native long addSEFDataBufferAddTag(byte[] bArr, long j, long j2, long j3, String str, int i, byte[] bArr2, int i2, byte[] bArr3, int i3, int i4, int i5);

    public static native int addSEFDataFd(int i, String str, int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int i5, int i6);

    public static native int addSEFDataFdAddTag(int i, String str, int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int i5, int i6);

    public static native int addSEFDataFdToMP4(int i, String str, int i2, byte[] bArr, int i3, byte[] bArr2, int i4, int i5, int i6);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addSEFDataFile(String str, String str2, int i, byte[] bArr, int i2, String str3, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addSEFDataFileAddTag(String str, String str2, int i, byte[] bArr, int i2, String str3, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addSEFDataFileToMP4(String str, String str2, int i, byte[] bArr, int i2, String str3, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addSEFDataFiles(String str, String[] strArr, int[] iArr, String[] strArr2, int[] iArr2, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int addSEFDataToMP4(String str, String str2, int i, byte[] bArr, int i2, byte[] bArr2, int i3, int i4, int i5);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int clearQdioData(String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int clearSEFData(String str);

    public static native int clearSEFDataFd(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int copyAllSEFData(String str, String str2);

    public static native int copyAllSEFDataFd(int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int deleteQdioData(String str, String str2, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int deleteSEFData(String str, String str2, int i);

    public static native int deleteSEFDataFd(int i, String str, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int fastClearSEFData(String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int fastDeleteSEFData(String str, String str2, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int getNativeVersion();

    public static native long getSEFBufferAllocSize(long j, int i, long j2, long j3, long j4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int getSEFDataCount(String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long[] getSEFDataPosition(String str, String str2);

    public static native long[] getSEFDataPositionFd(int i, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int getSEFDataType(String str, String str2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long[] getSEFSubDataPosition(String str, String str2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int isSEFFile(String str);

    public static native int isSEFfd(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String[] listKeyNames(String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String[] listKeyNamesByDataType(String str, int i);

    public static native String[] listKeyNamesFd(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int[] listSEFDataTypes(String str);

    public static native int[] listSEFDataTypesFd(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int saveAudioJPEG(String str, byte[] bArr, int i, String str2, int i2);

    SEFJNI() {
    }

    static {
        System.loadLibrary("SEF.quram");
    }

    public static int isSEFfileDescriptor(ParcelFileDescriptor Pfd) {
        return isSEFfd(Pfd.getFd());
    }

    public static long[] getSEFDataPositionFileDescriptor(ParcelFileDescriptor Pfd, String keyName) {
        return getSEFDataPositionFd(Pfd.getFd(), keyName);
    }

    public static int[] listSEFDataTypesFileDescriptor(ParcelFileDescriptor Pfd) {
        return listSEFDataTypesFd(Pfd.getFd());
    }

    public static int copyAllSEFDataFileDescriptor(ParcelFileDescriptor srcPfd, ParcelFileDescriptor dstPfd) {
        return copyAllSEFDataFd(srcPfd.getFd(), dstPfd.getFd());
    }

    public static int deleteSEFDataFileDescriptor(ParcelFileDescriptor Pfd, String keyName, int keyNameLength) {
        return deleteSEFDataFd(Pfd.getFd(), keyName, keyNameLength);
    }

    public static int clearSEFDataFileDescriptor(ParcelFileDescriptor Pfd) {
        return clearSEFDataFd(Pfd.getFd());
    }

    public static String[] listKeyNamesFileDescriptor(ParcelFileDescriptor Pfd) {
        return listKeyNamesFd(Pfd.getFd());
    }
}
