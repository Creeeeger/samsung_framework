package com.android.server.asks;

import android.os.Binder;
import android.os.IInstalld;
import android.os.SystemProperties;
import android.util.Slog;
import android.util.jar.StrictJarFile;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class RuleUpdateForSecurity {
    public RUFSContainer mContainer;
    public String TAG = "AASA_RuleUpdateForSecurity_RUFS";
    public String mVersionFromDevice = "";
    public String device_basePath = "/data/system/.aasa";
    public String device_policyCopyPath = "";
    public String device_policyUnzipPath = "";

    public final byte inverseEachBit(byte b, int i) {
        return (byte) (((byte) ((b >> i) & 1)) == 0 ? (1 << i) | b : (~(1 << i)) & b);
    }

    public RuleUpdateForSecurity(RUFSContainer rUFSContainer) {
        this.mContainer = rUFSContainer;
    }

    public boolean isUpdatePolicy(String str) {
        String policyVersion;
        RUFSContainer rUFSContainer = this.mContainer;
        if (rUFSContainer == null || (policyVersion = rUFSContainer.getPolicyVersion()) == null || policyVersion.length() <= 0) {
            return false;
        }
        try {
            Slog.i(this.TAG, "token:" + policyVersion + " device:" + str);
            if (Integer.parseInt(policyVersion) <= Integer.parseInt(str)) {
                return false;
            }
            try {
                this.mVersionFromDevice = str;
                Slog.i(this.TAG, " Now try to update");
            } catch (NumberFormatException unused) {
            }
            return true;
        } catch (NumberFormatException unused2) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x01aa, code lost:
    
        if (r0 == null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01a6, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01a4, code lost:
    
        if (r0 == null) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean updatePolicy(java.lang.String r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.RuleUpdateForSecurity.updatePolicy(java.lang.String, boolean):boolean");
    }

    public final boolean copyFileUsingStream(File file, File file2) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[IInstalld.FLAG_USE_QUOTA];
                    while (true) {
                        int read = fileInputStream2.read(bArr);
                        if (read > 0) {
                            fileOutputStream.write(bArr, 0, read);
                        } else {
                            try {
                                break;
                            } catch (IOException e) {
                                System.out.println("" + e);
                                e.printStackTrace();
                            }
                        }
                    }
                    fileInputStream2.close();
                    fileOutputStream.close();
                    return true;
                } catch (IOException unused) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                            System.out.println("" + e2);
                            e2.printStackTrace();
                            return false;
                        }
                    }
                    if (fileOutputStream == null) {
                        return false;
                    }
                    fileOutputStream.close();
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            System.out.println("" + e3);
                            e3.printStackTrace();
                            throw th;
                        }
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            } catch (IOException unused2) {
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (IOException unused3) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public final boolean checkTargetModelAndCarrier(ArrayList arrayList, ArrayList arrayList2) {
        String str = SystemProperties.get("ro.product.model");
        String str2 = SystemProperties.get("ro.csc.sales_code");
        boolean z = true;
        if (!arrayList.contains("ALL") || arrayList.size() != 1 ? !arrayList.contains(str) || ((!arrayList2.contains("ALL") || arrayList2.size() != 1) && !arrayList2.contains(str2)) : (!arrayList2.contains("ALL") || arrayList2.size() != 1) && !arrayList2.contains(str2)) {
            z = false;
        }
        Slog.d(this.TAG, "checkTargetModelAndCarrier() : result = " + z);
        return z;
    }

    public final void checkTargetAndRemoveIfNot(String str, String str2, String str3, String str4) {
        ArrayList arrayList;
        if (str3 == null || str4 == null) {
            return;
        }
        String[] split = str3.split(",");
        String[] split2 = str4.split(",");
        ArrayList arrayList2 = null;
        if (split != null) {
            arrayList = new ArrayList();
            for (String str5 : split) {
                arrayList.add(str5);
            }
        } else {
            arrayList = null;
        }
        if (split2 != null) {
            arrayList2 = new ArrayList();
            for (String str6 : split2) {
                arrayList2.add(str6);
            }
        }
        if (checkTargetModelAndCarrier(arrayList, arrayList2)) {
            return;
        }
        File file = new File(str + File.separator + str2);
        if (file.exists()) {
            Slog.v(this.TAG, str2 + " is not target here");
            file.delete();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x010f, code lost:
    
        if (r1 != 3) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean applyPolicies(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.asks.RuleUpdateForSecurity.applyPolicies(java.lang.String, java.lang.String):boolean");
    }

    public final void deleteDir(File file) {
        if (file != null) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    deleteDir(file2);
                }
            }
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public final byte[] descramble(byte[] bArr, String str) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = inverseEachBit(bArr[i], (str.charAt(i % str.length()) % 2) + 1);
        }
        return bArr2;
    }

    public static void writeFile(byte[] bArr, String str) {
        File file = new File(str);
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            file.getParentFile().mkdir();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        fileOutputStream.write(bArr);
        fileOutputStream.close();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x002d -> B:13:0x0061). Please report as a decompilation issue!!! */
    public final byte[] readFile(StrictJarFile strictJarFile, ZipEntry zipEntry) {
        BufferedInputStream bufferedInputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1048576];
        InputStream inputStream = null;
        try {
            try {
                try {
                    InputStream inputStream2 = strictJarFile.getInputStream(zipEntry);
                    try {
                        bufferedInputStream = new BufferedInputStream(inputStream2);
                        while (true) {
                            try {
                                int read = bufferedInputStream.read(bArr);
                                if (read < 0) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            } catch (Exception unused) {
                                inputStream = inputStream2;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                return byteArrayOutputStream.toByteArray();
                            } catch (Throwable th) {
                                th = th;
                                inputStream = inputStream2;
                                try {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                    if (bufferedInputStream != null) {
                                        try {
                                            bufferedInputStream.close();
                                            throw th;
                                        } catch (IOException e3) {
                                            e3.printStackTrace();
                                            throw th;
                                        }
                                    }
                                    throw th;
                                } catch (Exception unused2) {
                                    throw th;
                                }
                            }
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        bufferedInputStream.close();
                    } catch (Exception unused3) {
                        bufferedInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedInputStream = null;
                    }
                } catch (Exception unused4) {
                    bufferedInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedInputStream = null;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        } catch (Exception unused5) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public final String digest(StrictJarFile strictJarFile, ZipEntry zipEntry) {
        MessageDigest messageDigest;
        InputStream inputStream = null;
        try {
            messageDigest = MessageDigest.getInstance("SHA-1");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            messageDigest = null;
        }
        if (zipEntry == null) {
            return null;
        }
        try {
            inputStream = strictJarFile.getInputStream(zipEntry);
            byte[] bArr = new byte[IInstalld.FLAG_USE_QUOTA];
            if (inputStream != null) {
                while (true) {
                    int read = inputStream.read(bArr, 0, IInstalld.FLAG_USE_QUOTA);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                inputStream.close();
            }
        } catch (IOException e2) {
            System.err.println(" + No IO " + e2.toString());
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (RuntimeException e3) {
            System.err.println(" + No RUN " + e3.toString());
            if (inputStream != null) {
                inputStream.close();
            }
        }
        return convertToHex(messageDigest.digest());
    }

    public final boolean unzip(String str, String str2) {
        ZipInputStream zipInputStream;
        FileInputStream fileInputStream;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        byte[] bArr = new byte[IInstalld.FLAG_USE_QUOTA];
        FileOutputStream fileOutputStream = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                zipInputStream = new ZipInputStream(fileInputStream);
                try {
                    try {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        while (nextEntry != null) {
                            File file2 = new File(str2 + File.separator + nextEntry.getName());
                            new File(file2.getParent()).mkdirs();
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                            while (true) {
                                try {
                                    int read = zipInputStream.read(bArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    fileOutputStream2.write(bArr, 0, read);
                                } catch (IOException e) {
                                    e = e;
                                    fileOutputStream = fileOutputStream2;
                                    e.printStackTrace();
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    if (zipInputStream != null) {
                                        try {
                                            zipInputStream.closeEntry();
                                            zipInputStream.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    if (fileInputStream == null) {
                                        return false;
                                    }
                                    try {
                                        fileInputStream.close();
                                        return false;
                                    } catch (IOException unused3) {
                                        return false;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    fileOutputStream = fileOutputStream2;
                                    if (fileOutputStream != null) {
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException unused4) {
                                        }
                                    }
                                    if (zipInputStream != null) {
                                        try {
                                            zipInputStream.closeEntry();
                                            zipInputStream.close();
                                        } catch (IOException unused5) {
                                        }
                                    }
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                            throw th;
                                        } catch (IOException unused6) {
                                            throw th;
                                        }
                                    }
                                    throw th;
                                }
                            }
                            zipInputStream.closeEntry();
                            ZipEntry nextEntry2 = zipInputStream.getNextEntry();
                            fileOutputStream2.close();
                            nextEntry = nextEntry2;
                        }
                        try {
                            zipInputStream.closeEntry();
                            zipInputStream.close();
                        } catch (IOException unused7) {
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException unused8) {
                        }
                        return true;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (IOException e3) {
                e = e3;
                zipInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                zipInputStream = null;
            }
        } catch (IOException e4) {
            e = e4;
            zipInputStream = null;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            zipInputStream = null;
            fileInputStream = null;
        }
    }

    public final String convertToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = (b >>> 4) & 15;
            int i2 = 0;
            while (true) {
                sb.append((char) ((i < 0 || i > 9) ? (i - 10) + 97 : i + 48));
                i = b & 15;
                int i3 = i2 + 1;
                if (i2 >= 1) {
                    break;
                }
                i2 = i3;
            }
        }
        return sb.toString();
    }

    public final boolean compSizeofUncompressFiles(String str) {
        RUFSContainer rUFSContainer = this.mContainer;
        if (rUFSContainer == null) {
            return false;
        }
        try {
            long sizeofFiles = rUFSContainer.getSizeofFiles();
            long sizeofFiles2 = getSizeofFiles(str);
            if (Long.compare(sizeofFiles, sizeofFiles2) == 0) {
                return true;
            }
            Slog.i(this.TAG, "size of all files   token:" + sizeofFiles + " device:" + sizeofFiles2);
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final long getSizeofFiles(String str) {
        try {
            File file = new File(str);
            if (!file.isDirectory()) {
                return 0L;
            }
            long j = 0;
            for (File file2 : file.listFiles()) {
                j += file2.length();
            }
            return j;
        } catch (Exception e) {
            System.out.println("Error:" + e);
            return 0L;
        }
    }

    public final boolean enforcePermissionCheckForASKS() {
        return Binder.getCallingUid() == 1000;
    }
}
