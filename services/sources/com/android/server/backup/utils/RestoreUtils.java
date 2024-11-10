package com.android.server.backup.utils;

import android.content.Context;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageInstaller;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Slog;
import com.android.server.backup.FileMetadata;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public abstract class RestoreUtils {
    public static boolean mPrivilegeApp = false;

    public static void setPrivilegeApp(boolean z) {
        mPrivilegeApp = z;
    }

    public static int createSession(Context context, String str) {
        PackageInstaller packageInstaller = context.getPackageManager().getPackageInstaller();
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
        sessionParams.setInstallerPackageName(str);
        try {
            return packageInstaller.createSession(sessionParams);
        } catch (Exception e) {
            Slog.d("BackupManagerService", "Exception in session id created" + e);
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.content.pm.PackageInstaller] */
    /* JADX WARN: Type inference failed for: r7v6, types: [android.content.pm.PackageInstaller$Session] */
    public static boolean writeSession(Context context, InputStream inputStream, FileMetadata fileMetadata, String str, BytesReadListener bytesReadListener, int i) {
        PackageInstaller.Session packageInstaller = context.getPackageManager().getPackageInstaller();
        try {
            try {
                packageInstaller = packageInstaller.openSession(i);
                try {
                    OutputStream openWrite = packageInstaller.openWrite(fileMetadata.path, 0L, fileMetadata.size);
                    try {
                        byte[] bArr = new byte[32768];
                        long j = fileMetadata.size;
                        while (j > 0) {
                            long j2 = 32768;
                            if (j2 >= j) {
                                j2 = j;
                            }
                            int read = inputStream.read(bArr, 0, (int) j2);
                            if (read >= 0) {
                                bytesReadListener.onBytesRead(read);
                            }
                            openWrite.write(bArr, 0, read);
                            j -= read;
                        }
                        packageInstaller.fsync(openWrite);
                        if (openWrite != null) {
                            openWrite.close();
                        }
                    } catch (Throwable th) {
                        if (openWrite != null) {
                            try {
                                openWrite.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (InterruptedIOException e) {
                    Slog.e("BackupManagerService", " InterruptedIOException in apkStream.close()" + e);
                }
                if (packageInstaller != 0) {
                    packageInstaller.close();
                }
                return true;
            } finally {
            }
        } catch (Exception e2) {
            Slog.e("BackupManagerService", " Exception in writeSession " + e2);
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x013b A[Catch: IOException -> 0x0157, TRY_LEAVE, TryCatch #0 {IOException -> 0x0157, blocks: (B:3:0x0019, B:9:0x003a, B:11:0x0047, B:18:0x0056, B:20:0x0064, B:23:0x013b, B:27:0x0085, B:29:0x0097, B:31:0x009b, B:33:0x00b8, B:36:0x00d4, B:38:0x00de, B:40:0x00e4, B:42:0x0101, B:43:0x011c, B:54:0x0153, B:55:0x0156, B:5:0x0027, B:8:0x0037, B:47:0x0151, B:52:0x014e), top: B:2:0x0019, inners: #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean installApkSplitSupport(java.io.InputStream r4, android.content.Context r5, com.android.server.backup.restore.RestoreDeleteObserver r6, java.util.HashMap r7, java.util.HashMap r8, com.android.server.backup.FileMetadata r9, java.lang.String r10, com.android.server.backup.utils.BytesReadListener r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.utils.RestoreUtils.installApkSplitSupport(java.io.InputStream, android.content.Context, com.android.server.backup.restore.RestoreDeleteObserver, java.util.HashMap, java.util.HashMap, com.android.server.backup.FileMetadata, java.lang.String, com.android.server.backup.utils.BytesReadListener, int, int):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00dc A[Catch: IOException -> 0x020b, TryCatch #5 {IOException -> 0x020b, blocks: (B:3:0x001c, B:40:0x00cf, B:42:0x00dc, B:49:0x00ee, B:51:0x00fc, B:55:0x01da, B:61:0x011e, B:63:0x0130, B:65:0x0134, B:69:0x0151, B:72:0x0171, B:74:0x017b, B:76:0x0181, B:77:0x019d, B:79:0x01ba), top: B:2:0x001c, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ee A[Catch: IOException -> 0x020b, TryCatch #5 {IOException -> 0x020b, blocks: (B:3:0x001c, B:40:0x00cf, B:42:0x00dc, B:49:0x00ee, B:51:0x00fc, B:55:0x01da, B:61:0x011e, B:63:0x0130, B:65:0x0134, B:69:0x0151, B:72:0x0171, B:74:0x017b, B:76:0x0181, B:77:0x019d, B:79:0x01ba), top: B:2:0x001c, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01da A[Catch: IOException -> 0x020b, TRY_LEAVE, TryCatch #5 {IOException -> 0x020b, blocks: (B:3:0x001c, B:40:0x00cf, B:42:0x00dc, B:49:0x00ee, B:51:0x00fc, B:55:0x01da, B:61:0x011e, B:63:0x0130, B:65:0x0134, B:69:0x0151, B:72:0x0171, B:74:0x017b, B:76:0x0181, B:77:0x019d, B:79:0x01ba), top: B:2:0x001c, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[Catch: Exception -> 0x01fe, SYNTHETIC, TRY_LEAVE, TryCatch #8 {Exception -> 0x01fe, blocks: (B:97:0x01fd, B:96:0x01fa, B:91:0x01f4), top: B:88:0x01f2, inners: #11 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean installApk(java.io.InputStream r17, android.content.Context r18, com.android.server.backup.restore.RestoreDeleteObserver r19, java.util.HashMap r20, java.util.HashMap r21, com.android.server.backup.FileMetadata r22, java.lang.String r23, com.android.server.backup.utils.BytesReadListener r24, int r25) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.utils.RestoreUtils.installApk(java.io.InputStream, android.content.Context, com.android.server.backup.restore.RestoreDeleteObserver, java.util.HashMap, java.util.HashMap, com.android.server.backup.FileMetadata, java.lang.String, com.android.server.backup.utils.BytesReadListener, int):boolean");
    }

    /* loaded from: classes.dex */
    public class LocalIntentReceiver {
        public IIntentSender.Stub mLocalSender;
        public final Object mLock;
        public Intent mResult;

        public LocalIntentReceiver() {
            this.mLock = new Object();
            this.mResult = null;
            this.mLocalSender = new IIntentSender.Stub() { // from class: com.android.server.backup.utils.RestoreUtils.LocalIntentReceiver.1
                public void send(int i, Intent intent, String str, IBinder iBinder, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
                    synchronized (LocalIntentReceiver.this.mLock) {
                        LocalIntentReceiver.this.mResult = intent;
                        LocalIntentReceiver.this.mLock.notifyAll();
                    }
                }
            };
        }

        public IntentSender getIntentSender() {
            return new IntentSender(this.mLocalSender);
        }

        public Intent getResult() {
            Intent intent;
            synchronized (this.mLock) {
                while (true) {
                    intent = this.mResult;
                    if (intent == null) {
                        try {
                            this.mLock.wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
            return intent;
        }
    }
}
