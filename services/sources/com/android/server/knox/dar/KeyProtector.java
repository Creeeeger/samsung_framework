package com.android.server.knox.dar;

import android.os.Environment;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public class KeyProtector extends KeyProtectorBase {
    public static KeyProtector sInstance;

    public static KeyProtector getInstance() {
        if (sInstance == null) {
            synchronized (KeyProtector.class) {
                if (sInstance == null) {
                    sInstance = new KeyProtector();
                }
            }
        }
        return sInstance;
    }

    public boolean protect(byte[] bArr, String str, int i) {
        if (bArr == null || str == null) {
            Log.d("KeyProtector", "Wrong input parameter...");
            return false;
        }
        String attach = attach(str, i);
        try {
            if (setSecretKey(attach)) {
                SecretKey secretKey = getSecretKey(attach);
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, secretKey);
                byte[] doFinal = cipher.doFinal(bArr);
                byte[] iv = cipher.getIV();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                int length = iv == null ? 0 : iv.length;
                try {
                    if (length != 12) {
                        Log.d("KeyProtector", "Invalid iv length : " + length);
                        delete(str, i);
                        return false;
                    }
                    byteArrayOutputStream.write(iv);
                    byteArrayOutputStream.write(doFinal);
                    if (!writeToFile(i, str, byteArrayOutputStream.toByteArray())) {
                        Log.d("KeyProtector", "Failed to write into file...");
                        delete(str, i);
                        return false;
                    }
                    Log.d("KeyProtector", "Successfully wrote into file!");
                    return true;
                } catch (IOException e) {
                    Log.d("KeyProtector", "Failed to concatenate byte arrays");
                    e.printStackTrace();
                    delete(str, i);
                    return false;
                }
            }
            throw new Exception("Unexpected failure while set key");
        } catch (Exception e2) {
            e2.printStackTrace();
            deleteSecretKey(attach);
            return false;
        }
    }

    public byte[] release(String str, int i) {
        byte[] readFile = readFile(i, str);
        if (readFile == null) {
            return null;
        }
        try {
            byte[] copyOfRange = Arrays.copyOfRange(readFile, 0, 12);
            byte[] copyOfRange2 = Arrays.copyOfRange(readFile, 12, readFile.length);
            try {
                SecretKey secretKey = getSecretKey(attach(str, i));
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(2, secretKey, new GCMParameterSpec(128, copyOfRange));
                return cipher.doFinal(copyOfRange2);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        } catch (Exception e2) {
            Log.d("KeyProtector", "Failed in copying array...");
            e2.printStackTrace();
            return null;
        }
    }

    public boolean delete(String str, int i) {
        String attach = attach(str, i);
        boolean z = !checkSecretKey(attach) || (checkSecretKey(attach) && deleteSecretKey(attach));
        boolean deleteFile = deleteFile(i, str);
        if (!z) {
            Log.d("KeyProtector", "Unexpected failure while delete key with " + attach(str, i));
        }
        if (!deleteFile) {
            Log.d("KeyProtector", "Unexpected failure while delete file with " + attach(str, i));
        }
        return z && deleteFile;
    }

    public boolean exists(String str, int i) {
        String attach = attach(str, i);
        boolean checkSecretKey = checkSecretKey(attach);
        if (checkSecretKey) {
            Log.d("KeyProtector", "Key exists in keystore(" + attach + ")");
        }
        return checkSecretKey;
    }

    public byte[] encryptFast(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        if (bArr == null || bArr.length != 32) {
            Log.e("KeyProtector", "fast encryption - Only supported for 32-bytes key");
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                cipher.init(1, secretKeySpec);
                byte[] doFinal = cipher.doFinal(bArr2);
                byteArrayOutputStream.write(cipher.getIV());
                byteArrayOutputStream.write(doFinal);
                bArr3 = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } finally {
            }
        } catch (Exception e) {
            Log.e("KeyProtector", "fast encryption - Unexpected error");
            e.printStackTrace();
        }
        return bArr3;
    }

    public byte[] decryptFast(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr.length != 32 || bArr2 == null) {
            Log.e("KeyProtector", "fast decryption - Only supported for 32-bytes key");
            return null;
        }
        try {
            byte[] copyOfRange = Arrays.copyOfRange(bArr2, 0, 12);
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr2, 12, bArr2.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, secretKeySpec, new GCMParameterSpec(128, copyOfRange));
            return cipher.doFinal(copyOfRange2);
        } catch (Exception e) {
            Log.e("KeyProtector", "fast decryption - Unexpected error");
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007a, code lost:
    
        if (r4 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] readFile(int r3, java.lang.String r4) {
        /*
            r2 = this;
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.io.File r0 = android.os.Environment.getUserSystemDirectory(r3)
            java.lang.String r0 = r0.getAbsolutePath()
            r2.append(r0)
            java.lang.String r0 = "/"
            r2.append(r0)
            java.lang.String r0 = "ENCRYPTED_KEY_"
            r2.append(r0)
            r2.append(r4)
            java.lang.String r4 = "_"
            r2.append(r4)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "readFile - File path : "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "KeyProtector"
            android.util.Log.d(r4, r3)
            java.io.File r3 = new java.io.File
            r3.<init>(r2)
            boolean r2 = r3.exists()
            r4 = 0
            if (r2 == 0) goto L87
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d java.io.IOException -> L75
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d java.io.IOException -> L75
            int r3 = r2.available()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 java.io.IOException -> L66
            byte[] r4 = new byte[r3]     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 java.io.IOException -> L66
            r2.read(r4)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 java.io.IOException -> L66
            r2.close()     // Catch: java.io.IOException -> L87
            goto L87
        L5e:
            r3 = move-exception
            r4 = r2
            goto L81
        L61:
            r3 = move-exception
            r1 = r4
            r4 = r2
            r2 = r1
            goto L6f
        L66:
            r3 = move-exception
            r1 = r4
            r4 = r2
            r2 = r1
            goto L77
        L6b:
            r3 = move-exception
            goto L81
        L6d:
            r3 = move-exception
            r2 = r4
        L6f:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L6b
            if (r4 == 0) goto L7f
            goto L7c
        L75:
            r3 = move-exception
            r2 = r4
        L77:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L6b
            if (r4 == 0) goto L7f
        L7c:
            r4.close()     // Catch: java.io.IOException -> L7f
        L7f:
            r4 = r2
            goto L87
        L81:
            if (r4 == 0) goto L86
            r4.close()     // Catch: java.io.IOException -> L86
        L86:
            throw r3
        L87:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.KeyProtector.readFile(int, java.lang.String):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0070, code lost:
    
        if (r3 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0073, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0066, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
    
        if (r3 == null) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean writeToFile(int r2, java.lang.String r3, byte[] r4) {
        /*
            r1 = this;
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.File r0 = android.os.Environment.getUserSystemDirectory(r2)
            java.lang.String r0 = r0.getAbsolutePath()
            r1.append(r0)
            java.lang.String r0 = "/"
            r1.append(r0)
            java.lang.String r0 = "ENCRYPTED_KEY_"
            r1.append(r0)
            r1.append(r3)
            java.lang.String r3 = "_"
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "writeToFile - File path : "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "KeyProtector"
            android.util.Log.d(r3, r2)
            java.io.File r2 = new java.io.File
            r2.<init>(r1)
            r1 = 0
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5e java.io.IOException -> L6a
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5e java.io.IOException -> L6a
            r3.write(r4)     // Catch: java.lang.Exception -> L56 java.io.IOException -> L58 java.lang.Throwable -> L75
            r3.flush()     // Catch: java.lang.Exception -> L56 java.io.IOException -> L58 java.lang.Throwable -> L75
            r3.close()     // Catch: java.io.IOException -> L54
        L54:
            r1 = 1
            goto L74
        L56:
            r1 = move-exception
            goto L61
        L58:
            r1 = move-exception
            goto L6d
        L5a:
            r2 = move-exception
            r3 = r1
            r1 = r2
            goto L76
        L5e:
            r2 = move-exception
            r3 = r1
            r1 = r2
        L61:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L75
            if (r3 == 0) goto L73
        L66:
            r3.close()     // Catch: java.io.IOException -> L73
            goto L73
        L6a:
            r2 = move-exception
            r3 = r1
            r1 = r2
        L6d:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L75
            if (r3 == 0) goto L73
            goto L66
        L73:
            r1 = 0
        L74:
            return r1
        L75:
            r1 = move-exception
        L76:
            if (r3 == 0) goto L7b
            r3.close()     // Catch: java.io.IOException -> L7b
        L7b:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.knox.dar.KeyProtector.writeToFile(int, java.lang.String, byte[]):boolean");
    }

    public final boolean deleteFile(int i, String str) {
        String str2 = Environment.getUserSystemDirectory(i).getAbsolutePath() + "/ENCRYPTED_KEY_" + str + "_" + i;
        Log.d("KeyProtector", "deleteFile - File path : " + str2);
        File file = new File(str2);
        if (file.exists()) {
            try {
                return file.delete();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public final String attach(String str, int i) {
        if (str == null) {
            return null;
        }
        return str + "_" + i;
    }
}
