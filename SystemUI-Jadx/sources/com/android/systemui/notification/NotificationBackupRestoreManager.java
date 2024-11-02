package com.android.systemui.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.keyguard.CustomizationProvider$$ExternalSyntheticOutline0;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.LinkedHashMap;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationBackupRestoreManager {
    public static Cipher mCipher;
    public static byte[] mSalt;
    public static SecretKeySpec mSecretKey;
    public static String mSecurityPassword;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum ERR_CODE {
        SUCCESS(0),
        UNKNOWN_ERROR(1),
        /* JADX INFO: Fake field, exist only in values array */
        STORAGE_FULL(2),
        INVALID_DATA(3),
        /* JADX INFO: Fake field, exist only in values array */
        PARTIAL_SUCCESS(7);

        private int value;

        ERR_CODE(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class NotificationBnRReceiver extends BroadcastReceiver {
        public Thread mBackupThread;

        @Override // android.content.BroadcastReceiver
        public final void onReceive(final Context context, Intent intent) {
            String action = intent.getAction();
            KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("onReceive ( action = ", action, ")", "NotifBnRManager");
            if (action != null) {
                try {
                    final String stringExtra = intent.getStringExtra("SAVE_PATH");
                    final String stringExtra2 = intent.getStringExtra("SOURCE");
                    final String stringExtra3 = intent.getStringExtra("SESSION_KEY");
                    String stringExtra4 = intent.getStringExtra("EXPORT_SESSION_TIME");
                    int intExtra = intent.getIntExtra("ACTION", 0);
                    final int intExtra2 = intent.getIntExtra("SECURITY_LEVEL", 0);
                    final List list = (List) intent.getSerializableExtra("NOTIFICATION_BLOCK_LIST");
                    if (action.equals("com.samsung.android.intent.action.REQUEST_BACKUP_NOTIFICATION")) {
                        if (intExtra == 2) {
                            Thread thread = this.mBackupThread;
                            if (thread != null && thread.isAlive()) {
                                Log.d("NotifBnRManager", "stop backup working thread for quickpanel");
                                this.mBackupThread.interrupt();
                                this.mBackupThread = null;
                                NotificationBackupRestoreManager notificationBackupRestoreManager = (NotificationBackupRestoreManager) Dependency.get(NotificationBackupRestoreManager.class);
                                ERR_CODE err_code = ERR_CODE.UNKNOWN_ERROR;
                                notificationBackupRestoreManager.getClass();
                                NotificationBackupRestoreManager.sendResponse(context, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION", 1, err_code, stringExtra2, stringExtra4);
                            }
                        } else {
                            Thread thread2 = new Thread(new Runnable(this) { // from class: com.android.systemui.notification.NotificationBackupRestoreManager.NotificationBnRReceiver.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ((NotificationBackupRestoreManager) Dependency.get(NotificationBackupRestoreManager.class)).startBackup(context, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION", stringExtra, stringExtra2, intExtra2, "", stringExtra3, list);
                                }
                            }, "REQUEST_BACKUP_NOTIFICATION");
                            this.mBackupThread = thread2;
                            thread2.start();
                        }
                    } else if (action.equals("com.samsung.android.intent.action.REQUEST_RESTORE_NOTIFICATION")) {
                        new Thread(new Runnable(this) { // from class: com.android.systemui.notification.NotificationBackupRestoreManager.NotificationBnRReceiver.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                ((NotificationBackupRestoreManager) Dependency.get(NotificationBackupRestoreManager.class)).startRestore(context, "com.samsung.android.intent.action.RESPONSE_RESTORE_NOTIFICATION", stringExtra, stringExtra2, intExtra2, stringExtra3, list);
                            }
                        }, "REQUEST_RESTORE_NOTIFICATION").start();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public NotificationBackupRestoreManager() {
        new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014b A[Catch: IOException -> 0x0155, TRY_LEAVE, TryCatch #2 {IOException -> 0x0155, blocks: (B:31:0x0133, B:33:0x014b), top: B:30:0x0133 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int createBackupFile(int r9, java.lang.String r10, java.util.List r11) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.notification.NotificationBackupRestoreManager.createBackupFile(int, java.lang.String, java.util.List):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0085, code lost:
    
        if (r3 != 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c1, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00be, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bc, code lost:
    
        if (r3 != 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a3, code lost:
    
        if (r3 != 0) goto L64;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d1  */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.File decrypt(int r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.notification.NotificationBackupRestoreManager.decrypt(int, java.lang.String):java.io.File");
    }

    public static InputStream decryptStream(InputStream inputStream, int i) {
        byte[] bArr = new byte[mCipher.getBlockSize()];
        inputStream.read(bArr);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
        if (i == 1) {
            byte[] bArr2 = new byte[16];
            mSalt = bArr2;
            inputStream.read(bArr2);
            mSecretKey = generatePBKDF2SecretKey();
        } else {
            mSecretKey = generateSHA256SecretKey();
        }
        mCipher.init(2, mSecretKey, ivParameterSpec);
        return new CipherInputStream(inputStream, mCipher);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0091, code lost:
    
        if (r7 == 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0093, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0079, code lost:
    
        if (r7 == 0) goto L68;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00aa  */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v20, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void encrypt(java.io.File r7, java.lang.String r8, int r9) {
        /*
            java.lang.String r0 = "NotifBnRManager"
            java.io.File r1 = new java.io.File
            r1.<init>(r8)
            r8 = 0
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L64 java.io.IOException -> L7c
            if (r2 != 0) goto L11
            r1.createNewFile()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L64 java.io.IOException -> L7c
        L11:
            long r2 = r7.length()     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L64 java.io.IOException -> L7c
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L4d
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L64 java.io.IOException -> L7c
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L64 java.io.IOException -> L7c
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47 java.io.IOException -> L4a
            r7.<init>(r1)     // Catch: java.lang.Throwable -> L44 java.lang.Exception -> L47 java.io.IOException -> L4a
            java.io.OutputStream r8 = encryptStream(r7, r9)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L40 java.io.IOException -> L42
            r9 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r9]     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L40 java.io.IOException -> L42
        L2d:
            r3 = 0
            int r4 = r2.read(r1, r3, r9)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L40 java.io.IOException -> L42
            r5 = -1
            if (r4 == r5) goto L39
            r8.write(r1, r3, r4)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L40 java.io.IOException -> L42
            goto L2d
        L39:
            r9 = r7
            r7 = r8
            r8 = r2
            goto L4f
        L3d:
            r9 = move-exception
            goto L9e
        L40:
            r9 = move-exception
            goto L68
        L42:
            r9 = move-exception
            goto L80
        L44:
            r7 = move-exception
            r9 = r7
            goto L62
        L47:
            r7 = move-exception
            r9 = r7
            goto L67
        L4a:
            r7 = move-exception
            r9 = r7
            goto L7f
        L4d:
            r7 = r8
            r9 = r7
        L4f:
            if (r8 == 0) goto L54
            r8.close()
        L54:
            if (r7 == 0) goto L59
            r7.close()
        L59:
            if (r9 == 0) goto L96
            r9.close()
            goto L96
        L5f:
            r7 = move-exception
            r9 = r7
            r2 = r8
        L62:
            r7 = r8
            goto L9e
        L64:
            r7 = move-exception
            r9 = r7
            r2 = r8
        L67:
            r7 = r8
        L68:
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L97
            android.util.Log.d(r0, r9)     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L74
            r2.close()
        L74:
            if (r8 == 0) goto L79
            r8.close()
        L79:
            if (r7 == 0) goto L96
            goto L93
        L7c:
            r7 = move-exception
            r9 = r7
            r2 = r8
        L7f:
            r7 = r8
        L80:
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L97
            android.util.Log.d(r0, r9)     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L8c
            r2.close()
        L8c:
            if (r8 == 0) goto L91
            r8.close()
        L91:
            if (r7 == 0) goto L96
        L93:
            r7.close()
        L96:
            return
        L97:
            r9 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
            r6 = r8
            r8 = r7
            r7 = r6
        L9e:
            if (r2 == 0) goto La3
            r2.close()
        La3:
            if (r8 == 0) goto La8
            r8.close()
        La8:
            if (r7 == 0) goto Lad
            r7.close()
        Lad:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.notification.NotificationBackupRestoreManager.encrypt(java.io.File, java.lang.String, int):void");
    }

    public static OutputStream encryptStream(OutputStream outputStream, int i) {
        byte[] bArr = new byte[mCipher.getBlockSize()];
        new SecureRandom().nextBytes(bArr);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
        outputStream.write(bArr);
        if (i == 1) {
            byte[] bArr2 = new byte[16];
            new SecureRandom().nextBytes(bArr2);
            mSalt = bArr2;
            outputStream.write(bArr2);
            mSecretKey = generatePBKDF2SecretKey();
        } else {
            mSecretKey = generateSHA256SecretKey();
        }
        mCipher.init(1, mSecretKey, ivParameterSpec);
        return new CipherOutputStream(outputStream, mCipher);
    }

    public static SecretKeySpec generatePBKDF2SecretKey() {
        return new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(mSecurityPassword.toCharArray(), mSalt, 1000, 256)).getEncoded(), "AES");
    }

    public static SecretKeySpec generateSHA256SecretKey() {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(mSecurityPassword.getBytes("UTF-8"));
        byte[] bArr = new byte[16];
        System.arraycopy(messageDigest.digest(), 0, bArr, 0, 16);
        return new SecretKeySpec(bArr, "AES");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean loadRestoreFile(java.io.File r7, java.util.List r8) {
        /*
            java.lang.String r0 = "loadRestoreFile failed"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = " filename="
            r1.<init>(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "NotifBnRManager"
            android.util.Log.d(r2, r1)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = " filename path="
            r1.<init>(r3)
            java.lang.String r3 = r7.getPath()
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r2, r1)
            r1 = 0
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            java.lang.String r4 = r7.getPath()     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L50
            long r4 = r7.length()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            int r7 = (int) r4     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            byte[] r1 = new byte[r7]     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            r3.read(r1)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L49
            r3.close()     // Catch: java.lang.Exception -> L42
            goto L60
        L42:
            r7 = move-exception
            android.util.Log.d(r2, r0, r7)
            goto L60
        L47:
            r7 = move-exception
            goto L81
        L49:
            r7 = move-exception
            r6 = r3
            r3 = r1
            r1 = r6
            goto L52
        L4e:
            r7 = move-exception
            goto L80
        L50:
            r7 = move-exception
            r3 = r1
        L52:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L4e
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.lang.Exception -> L5b
            goto L5f
        L5b:
            r7 = move-exception
            android.util.Log.d(r2, r0, r7)
        L5f:
            r1 = r3
        L60:
            java.lang.String r7 = "notification"
            android.os.IBinder r7 = android.os.ServiceManager.getService(r7)
            android.app.INotificationManager r7 = android.app.INotificationManager.Stub.asInterface(r7)
            r0 = 0
            if (r8 == 0) goto L76
            int r2 = r8.size()     // Catch: java.lang.Exception -> L7b
            if (r2 <= 0) goto L76
            r7.setRestoreBlockListForSS(r8)     // Catch: java.lang.Exception -> L7b
        L76:
            r7.applyRestore(r1, r0)     // Catch: java.lang.Exception -> L7b
            r0 = 1
            goto L7f
        L7b:
            r7 = move-exception
            r7.printStackTrace()
        L7f:
            return r0
        L80:
            r3 = r1
        L81:
            if (r3 == 0) goto L8b
            r3.close()     // Catch: java.lang.Exception -> L87
            goto L8b
        L87:
            r8 = move-exception
            android.util.Log.d(r2, r0, r8)
        L8b:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.notification.NotificationBackupRestoreManager.loadRestoreFile(java.io.File, java.util.List):boolean");
    }

    public static void sendResponse(Context context, String str, int i, ERR_CODE err_code, String str2, String str3) {
        StringBuilder m = CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0.m(" action=", str, " resultCode=", i, " errorCode=");
        m.append(err_code);
        m.append(" requiredSize=0");
        Log.d("NotifBnRManager", m.toString());
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("RESULT", i);
        intent.putExtra("ERR_CODE", err_code.getValue());
        intent.putExtra("REQ_SIZE", 0);
        intent.putExtra("SOURCE", str2);
        if (str3 != null) {
            intent.putExtra("EXPORT_SESSION_TIME", str3);
        }
        context.sendBroadcast(intent, "com.wssnps.permission.COM_WSSNPS");
        Log.d("NotifBnRManager", "sendBroadcast. ");
    }

    public static void streamCrypt(String str) {
        mSecurityPassword = str;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(mSecurityPassword.getBytes("UTF-8"));
        byte[] bArr = new byte[16];
        System.arraycopy(messageDigest.digest(), 0, bArr, 0, 16);
        mCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        mSecretKey = new SecretKeySpec(bArr, "AES");
    }

    public void startBackup(Context context, String str, String str2, String str3, int i, String str4, String str5, List<String> list) {
        ERR_CODE err_code;
        CustomizationProvider$$ExternalSyntheticOutline0.m("start backup basePath=", str2, " source=", str3, "NotifBnRManager");
        ERR_CODE err_code2 = ERR_CODE.SUCCESS;
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, "/");
        try {
            streamCrypt(str5);
            int createBackupFile = createBackupFile(i, m, list);
            Log.d("NotifBnRManager", "resultCode=" + createBackupFile);
            if (createBackupFile == 1) {
                err_code = ERR_CODE.INVALID_DATA;
            } else {
                err_code = err_code2;
            }
            sendResponse(context, str, createBackupFile, err_code, str3, str4);
        } catch (Exception e) {
            sendResponse(context, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION", 1, ERR_CODE.INVALID_DATA, str3, str4);
            e.printStackTrace();
        }
    }

    public void startRestore(Context context, String str, String str2, String str3, int i, String str4, List<String> list) {
        int i2;
        CustomizationProvider$$ExternalSyntheticOutline0.m("start restore basePath=", str2, " source=", str3, "NotifBnRManager");
        ERR_CODE err_code = ERR_CODE.SUCCESS;
        String m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str2, "/");
        try {
            streamCrypt(str4);
            if (!loadRestoreFile(decrypt(i, m), list)) {
                err_code = ERR_CODE.INVALID_DATA;
                i2 = 1;
            } else {
                i2 = 0;
            }
            sendResponse(context, str, i2, err_code, str3, null);
        } catch (Exception e) {
            sendResponse(context, "com.samsung.android.intent.action.RESPONSE_RESTORE_NOTIFICATION", 1, ERR_CODE.INVALID_DATA, str3, null);
            e.printStackTrace();
        }
    }
}
