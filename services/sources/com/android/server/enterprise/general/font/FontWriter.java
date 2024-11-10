package com.android.server.enterprise.general.font;

import android.content.Context;
import android.os.UserHandle;
import android.util.Log;
import android.util.Slog;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

/* loaded from: classes2.dex */
public class FontWriter {
    public static String TAG = "FontWriter";
    public FileOutputStream fOut = null;
    public OutputStreamWriter osw = null;
    public BufferedOutputStream bos = null;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006a, code lost:
    
        if (r7 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006c, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
    
        if (r7 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void writeLoc(android.content.Context r5, java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            java.lang.String r5 = "writeLoc : fOut.close() error"
            java.lang.String r0 = "writeLoc : osw.close() error"
            java.lang.String r1 = ""
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            r2.<init>()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            java.lang.String r3 = "/data/app_fonts/"
            r2.append(r3)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            int r3 = android.os.UserHandle.myUserId()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            r2.append(r3)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            r3.<init>(r2, r6)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            r3.createNewFile()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            java.lang.String r6 = r3.getAbsolutePath()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7a
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r2.<init>(r3)     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r4.fOut = r2     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.io.OutputStreamWriter r2 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.io.FileOutputStream r3 = r4.fOut     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r2.<init>(r3)     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r4.osw = r2     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r3.<init>()     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r3.append(r7)     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.lang.String r7 = "\n"
            r3.append(r7)     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r2.write(r7)     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.io.OutputStreamWriter r7 = r4.osw     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r7.flush()     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.io.FileOutputStream r7 = r4.fOut     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            r7.flush()     // Catch: java.lang.Exception -> L76 java.lang.Throwable -> L78
            java.io.OutputStreamWriter r7 = r4.osw     // Catch: java.io.IOException -> L63
            if (r7 == 0) goto L68
            r7.close()     // Catch: java.io.IOException -> L63
            goto L68
        L63:
            java.lang.String r7 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r7, r0)
        L68:
            java.io.FileOutputStream r7 = r4.fOut     // Catch: java.io.IOException -> L70
            if (r7 == 0) goto L91
        L6c:
            r7.close()     // Catch: java.io.IOException -> L70
            goto L91
        L70:
            java.lang.String r7 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r7, r5)
            goto L91
        L76:
            r7 = move-exception
            goto L7c
        L78:
            r6 = move-exception
            goto L9b
        L7a:
            r7 = move-exception
            r6 = r1
        L7c:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L78
            java.io.OutputStreamWriter r7 = r4.osw     // Catch: java.io.IOException -> L87
            if (r7 == 0) goto L8c
            r7.close()     // Catch: java.io.IOException -> L87
            goto L8c
        L87:
            java.lang.String r7 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r7, r0)
        L8c:
            java.io.FileOutputStream r7 = r4.fOut     // Catch: java.io.IOException -> L70
            if (r7 == 0) goto L91
            goto L6c
        L91:
            java.lang.String r5 = "persist.sys.flipfontpath"
            android.os.SystemProperties.set(r5, r1)
            r4.changeFilePermission(r6)
            return
        L9b:
            java.io.OutputStreamWriter r7 = r4.osw     // Catch: java.io.IOException -> La3
            if (r7 == 0) goto La8
            r7.close()     // Catch: java.io.IOException -> La3
            goto La8
        La3:
            java.lang.String r7 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r7, r0)
        La8:
            java.io.FileOutputStream r4 = r4.fOut     // Catch: java.io.IOException -> Lb0
            if (r4 == 0) goto Lb5
            r4.close()     // Catch: java.io.IOException -> Lb0
            goto Lb5
        Lb0:
            java.lang.String r4 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r4, r5)
        Lb5:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.general.font.FontWriter.writeLoc(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public File createFontDirectory(Context context, String str) {
        Process exec;
        Log.i(TAG, "createFontDirectory : Start");
        try {
            File file = new File("/data/app_fonts/" + String.valueOf(UserHandle.myUserId()));
            if (!file.mkdir()) {
                Slog.d(TAG, "Couldn't create font dir");
            }
            file.setReadable(true, false);
            if (!file.setWritable(true, false)) {
                Slog.d(TAG, "Couldn't give Writable permission : " + file.getAbsolutePath());
            }
            file.setExecutable(true, false);
            File file2 = new File(file, str);
            String[] list = file.list();
            if (list == null) {
                return null;
            }
            for (String str2 : list) {
                deleteFolder(file, str2);
            }
            if (file2.mkdir()) {
                Log.i(TAG, "Font directory  : Created");
            } else {
                Log.i(TAG, "Font directory  : Not Created");
            }
            try {
                exec = Runtime.getRuntime().exec("chmod 711 " + file2.getAbsolutePath());
                exec.waitFor();
            } catch (IOException unused) {
                Log.i(TAG, "IOException : ");
            } catch (InterruptedException unused2) {
                Log.i(TAG, "InterruptedException : ");
            }
            if (exec.exitValue() == 0) {
                return file2;
            }
            throw new IOException("Cannot chmod");
        } catch (SecurityException unused3) {
            Log.e(TAG, "SecurityException while setFileProperties");
            return null;
        } catch (Exception unused4) {
            Log.e(TAG, "Exception in createFontDirectory");
            return null;
        }
    }

    public final boolean deleteFolder(File file, String str) {
        File file2 = new File(file, str);
        String[] list = file2.list();
        if (list == null) {
            return false;
        }
        for (String str2 : list) {
            new File(file2, str2).delete();
        }
        return file2.delete();
    }

    public void changeFilePermission(String str) {
        try {
            Process exec = Runtime.getRuntime().exec("chmod 744 " + str);
            exec.waitFor();
            if (exec.exitValue() == 0) {
            } else {
                throw new IOException("Cannot chmod");
            }
        } catch (IOException | InterruptedException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
    
        if (r12 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
    
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x009a, code lost:
    
        if (r12 == null) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void copyFontFile(java.io.File r11, java.io.InputStream r12, java.lang.String r13) {
        /*
            r10 = this;
            java.lang.String r0 = "copyFontFile : bos.close() error"
            java.lang.String r1 = "copyFontFile : fOut.close() error"
            java.lang.String r2 = "copyFontFile : myInputStream.close() error"
            java.lang.String r3 = ""
            r4 = 0
            java.io.File r6 = new java.io.File     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r6.<init>(r11, r13)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r6.createNewFile()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            java.lang.String r3 = r6.getAbsolutePath()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r10.fOut = r7     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            java.io.BufferedOutputStream r6 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            java.io.FileOutputStream r7 = r10.fOut     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r10.bos = r6     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
        L2a:
            int r7 = r12.read(r6)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            if (r7 <= 0) goto L37
            java.io.BufferedOutputStream r8 = r10.bos     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r9 = 0
            r8.write(r6, r9, r7)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            goto L2a
        L37:
            java.io.BufferedOutputStream r6 = r10.bos     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r6.flush()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            java.io.FileOutputStream r6 = r10.fOut     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r6.flush()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            java.io.BufferedOutputStream r6 = r10.bos     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r6.close()     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6c
            r12.close()     // Catch: java.io.IOException -> L4a
            goto L4f
        L4a:
            java.lang.String r12 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r12, r2)
        L4f:
            java.io.FileOutputStream r12 = r10.fOut     // Catch: java.io.IOException -> L57
            if (r12 == 0) goto L5c
            r12.close()     // Catch: java.io.IOException -> L57
            goto L5c
        L57:
            java.lang.String r12 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r12, r1)
        L5c:
            java.io.BufferedOutputStream r12 = r10.bos     // Catch: java.io.IOException -> L64
            if (r12 == 0) goto L9d
        L60:
            r12.close()     // Catch: java.io.IOException -> L64
            goto L9d
        L64:
            java.lang.String r12 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r12, r0)
            goto L9d
        L6a:
            r11 = move-exception
            goto Lb1
        L6c:
            r6 = move-exception
            java.io.File r7 = new java.io.File     // Catch: java.lang.Throwable -> L6a
            r7.<init>(r11, r13)     // Catch: java.lang.Throwable -> L6a
            long r8 = r7.length()     // Catch: java.lang.Throwable -> L6a
            int r8 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r8 != 0) goto L7d
            r7.delete()     // Catch: java.lang.Throwable -> L6a
        L7d:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L6a
            if (r12 == 0) goto L8b
            r12.close()     // Catch: java.io.IOException -> L86
            goto L8b
        L86:
            java.lang.String r12 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r12, r2)
        L8b:
            java.io.FileOutputStream r12 = r10.fOut     // Catch: java.io.IOException -> L93
            if (r12 == 0) goto L98
            r12.close()     // Catch: java.io.IOException -> L93
            goto L98
        L93:
            java.lang.String r12 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r12, r1)
        L98:
            java.io.BufferedOutputStream r12 = r10.bos     // Catch: java.io.IOException -> L64
            if (r12 == 0) goto L9d
            goto L60
        L9d:
            r10.changeFilePermission(r3)
            java.io.File r10 = new java.io.File
            r10.<init>(r11, r13)
            long r11 = r10.length()
            int r11 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r11 != 0) goto Lb0
            r10.delete()
        Lb0:
            return
        Lb1:
            if (r12 == 0) goto Lbc
            r12.close()     // Catch: java.io.IOException -> Lb7
            goto Lbc
        Lb7:
            java.lang.String r12 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r12, r2)
        Lbc:
            java.io.FileOutputStream r12 = r10.fOut     // Catch: java.io.IOException -> Lc4
            if (r12 == 0) goto Lc9
            r12.close()     // Catch: java.io.IOException -> Lc4
            goto Lc9
        Lc4:
            java.lang.String r12 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r12, r1)
        Lc9:
            java.io.BufferedOutputStream r10 = r10.bos     // Catch: java.io.IOException -> Ld1
            if (r10 == 0) goto Ld6
            r10.close()     // Catch: java.io.IOException -> Ld1
            goto Ld6
        Ld1:
            java.lang.String r10 = com.android.server.enterprise.general.font.FontWriter.TAG
            android.util.Log.e(r10, r0)
        Ld6:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.general.font.FontWriter.copyFontFile(java.io.File, java.io.InputStream, java.lang.String):void");
    }
}
