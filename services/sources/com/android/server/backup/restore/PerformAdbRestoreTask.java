package com.android.server.backup.restore;

import android.app.backup.IFullBackupRestoreObserver;
import android.os.ParcelFileDescriptor;
import android.util.Slog;
import com.android.server.backup.BackupManagerYuva;
import com.android.server.backup.OperationStorage;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.fullbackup.FullBackupObbConnection;
import com.android.server.backup.utils.PasswordUtils;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class PerformAdbRestoreTask implements Runnable {
    public static BackupManagerYuva mBackupManagerYuva;
    public final UserBackupManagerService mBackupManagerService;
    public final String mCurrentPassword;
    public final String mDecryptPassword;
    public final ParcelFileDescriptor mInputFile;
    public final AtomicBoolean mLatchObject;
    public final FullBackupObbConnection mObbConnection;
    public IFullBackupRestoreObserver mObserver;
    public final OperationStorage mOperationStorage;
    public boolean mOperationTypeMIGRATION;
    public boolean mPrivilegeApp;
    public boolean restorePass = false;

    public PerformAdbRestoreTask(UserBackupManagerService userBackupManagerService, OperationStorage operationStorage, ParcelFileDescriptor parcelFileDescriptor, String str, String str2, IFullBackupRestoreObserver iFullBackupRestoreObserver, AtomicBoolean atomicBoolean, boolean z, boolean z2) {
        this.mPrivilegeApp = false;
        this.mOperationTypeMIGRATION = false;
        this.mBackupManagerService = userBackupManagerService;
        this.mOperationStorage = operationStorage;
        this.mInputFile = parcelFileDescriptor;
        this.mCurrentPassword = str;
        this.mDecryptPassword = str2;
        this.mObserver = iFullBackupRestoreObserver;
        this.mLatchObject = atomicBoolean;
        this.mObbConnection = new FullBackupObbConnection(userBackupManagerService);
        this.mPrivilegeApp = z;
        this.mOperationTypeMIGRATION = z2;
        if (UserBackupManagerService.isYuvaSupported()) {
            Slog.d("BackupManagerService", "Backup Manager Yuva is Supported");
            mBackupManagerYuva = BackupManagerYuva.getInstanceBackupYuva();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0251 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 661
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.restore.PerformAdbRestoreTask.run():void");
    }

    public static void readFullyOrThrow(InputStream inputStream, byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            int read = inputStream.read(bArr, i, bArr.length - i);
            if (read <= 0) {
                throw new IOException("Couldn't fully read data");
            }
            i += read;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0051, code lost:
    
        if (r8 != null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.InputStream parseBackupFileHeaderAndReturnTarStream(java.io.InputStream r8, java.lang.String r9) {
        /*
            r0 = 15
            byte[] r0 = new byte[r0]
            readFullyOrThrow(r8, r0)
            java.lang.String r1 = "ANDROID BACKUP\n"
            java.lang.String r2 = "UTF-8"
            byte[] r1 = r1.getBytes(r2)
            boolean r0 = java.util.Arrays.equals(r1, r0)
            java.lang.String r1 = "BackupManagerService"
            r2 = 0
            if (r0 == 0) goto L75
            java.lang.String r0 = readHeaderLine(r8)
            int r3 = java.lang.Integer.parseInt(r0)
            r4 = 5
            if (r3 > r4) goto L5c
            r0 = 1
            if (r3 != r0) goto L28
            r3 = r0
            goto L29
        L28:
            r3 = r2
        L29:
            java.lang.String r4 = readHeaderLine(r8)
            int r4 = java.lang.Integer.parseInt(r4)
            if (r4 == 0) goto L35
            r4 = r0
            goto L36
        L35:
            r4 = r2
        L36:
            java.lang.String r5 = readHeaderLine(r8)
            java.lang.String r6 = "none"
            boolean r6 = r5.equals(r6)
            if (r6 == 0) goto L45
        L43:
            r2 = r0
            goto L59
        L45:
            if (r9 == 0) goto L54
            int r6 = r9.length()
            if (r6 <= 0) goto L54
            java.io.InputStream r8 = decodeAesHeaderAndInitialize(r9, r5, r3, r8)
            if (r8 == 0) goto L59
            goto L43
        L54:
            java.lang.String r9 = "Archive is encrypted but no password given"
            android.util.Slog.w(r1, r9)
        L59:
            r9 = r2
            r2 = r4
            goto L71
        L5c:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r3 = "Wrong header version: "
            r9.append(r3)
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            android.util.Slog.w(r1, r9)
            r9 = r2
        L71:
            r7 = r2
            r2 = r9
            r9 = r7
            goto L7b
        L75:
            java.lang.String r9 = "Didn't read the right header magic"
            android.util.Slog.w(r1, r9)
            r9 = r2
        L7b:
            if (r2 != 0) goto L8b
            java.lang.String r8 = "Invalid restore data; aborting."
            android.util.Slog.w(r1, r8)
            com.android.server.backup.BackupManagerYuva r8 = com.android.server.backup.restore.PerformAdbRestoreTask.mBackupManagerYuva
            if (r8 == 0) goto L89
            r8.setMemorySaverRestoreFail()
        L89:
            r8 = 0
            return r8
        L8b:
            if (r9 == 0) goto L93
            java.util.zip.InflaterInputStream r9 = new java.util.zip.InflaterInputStream
            r9.<init>(r8)
            r8 = r9
        L93:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.backup.restore.PerformAdbRestoreTask.parseBackupFileHeaderAndReturnTarStream(java.io.InputStream, java.lang.String):java.io.InputStream");
    }

    public static String readHeaderLine(InputStream inputStream) {
        StringBuilder sb = new StringBuilder(80);
        while (true) {
            int read = inputStream.read();
            if (read < 0 || read == 10) {
                break;
            }
            sb.append((char) read);
        }
        return sb.toString();
    }

    public static InputStream attemptEncryptionKeyDecryption(String str, String str2, byte[] bArr, byte[] bArr2, int i, String str3, String str4, InputStream inputStream, boolean z) {
        CipherInputStream cipherInputStream = null;
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            SecretKey buildPasswordKey = PasswordUtils.buildPasswordKey(str2, str, bArr, i);
            cipher.init(2, new SecretKeySpec(buildPasswordKey.getEncoded(), "AES"), new IvParameterSpec(PasswordUtils.hexToByteArray(str3)));
            byte[] doFinal = cipher.doFinal(PasswordUtils.hexToByteArray(str4));
            int i2 = doFinal[0] + 1;
            byte[] copyOfRange = Arrays.copyOfRange(doFinal, 1, i2);
            int i3 = i2 + 1;
            int i4 = doFinal[i2] + i3;
            byte[] copyOfRange2 = Arrays.copyOfRange(doFinal, i3, i4);
            int i5 = i4 + 1;
            if (Arrays.equals(PasswordUtils.makeKeyChecksum(str2, copyOfRange2, bArr2, i), Arrays.copyOfRange(doFinal, i5, doFinal[i4] + i5))) {
                cipher.init(2, new SecretKeySpec(copyOfRange2, "AES"), new IvParameterSpec(copyOfRange));
                cipherInputStream = new CipherInputStream(inputStream, cipher);
            } else if (z) {
                Slog.w("BackupManagerService", "Incorrect password");
            }
        } catch (InvalidAlgorithmParameterException e) {
            if (z) {
                Slog.e("BackupManagerService", "Needed parameter spec unavailable!", e);
            }
        } catch (InvalidKeyException unused) {
            if (z) {
                Slog.w("BackupManagerService", "Illegal password; aborting");
            }
        } catch (NoSuchAlgorithmException unused2) {
            if (z) {
                Slog.e("BackupManagerService", "Needed decryption algorithm unavailable!");
            }
        } catch (BadPaddingException unused3) {
            if (z) {
                Slog.w("BackupManagerService", "Incorrect password");
            }
        } catch (IllegalBlockSizeException unused4) {
            if (z) {
                Slog.w("BackupManagerService", "Invalid block size in encryption key");
            }
        } catch (NoSuchPaddingException unused5) {
            if (z) {
                Slog.e("BackupManagerService", "Needed padding mechanism unavailable!");
            }
        }
        return cipherInputStream;
    }

    public static InputStream decodeAesHeaderAndInitialize(String str, String str2, boolean z, InputStream inputStream) {
        InputStream inputStream2 = null;
        try {
            if (str2.equals("AES-256")) {
                byte[] hexToByteArray = PasswordUtils.hexToByteArray(readHeaderLine(inputStream));
                byte[] hexToByteArray2 = PasswordUtils.hexToByteArray(readHeaderLine(inputStream));
                int parseInt = Integer.parseInt(readHeaderLine(inputStream));
                String readHeaderLine = readHeaderLine(inputStream);
                String readHeaderLine2 = readHeaderLine(inputStream);
                inputStream2 = attemptEncryptionKeyDecryption(str, "PBKDF2WithHmacSHA1", hexToByteArray, hexToByteArray2, parseInt, readHeaderLine, readHeaderLine2, inputStream, false);
                if (inputStream2 == null && z) {
                    inputStream2 = attemptEncryptionKeyDecryption(str, "PBKDF2WithHmacSHA1And8bit", hexToByteArray, hexToByteArray2, parseInt, readHeaderLine, readHeaderLine2, inputStream, true);
                }
            } else {
                Slog.w("BackupManagerService", "Unsupported encryption method: " + str2);
            }
        } catch (IOException unused) {
            Slog.w("BackupManagerService", "Can't read input header");
        } catch (NumberFormatException unused2) {
            Slog.w("BackupManagerService", "Can't parse restore data header");
        }
        return inputStream2;
    }
}
