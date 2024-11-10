package com.android.server.enterprise.auditlog;

import android.util.Log;
import java.io.File;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Date;

/* loaded from: classes2.dex */
public class PartialFileNode {
    public static long FILESIZE = 524288;
    public final Object deleteSync;
    public FileChannel mChannel;
    public volatile File mFile;
    public volatile boolean mMarkAsDeprecated;
    public String mPackageName;
    public RandomAccessFile mRandomAccessFile;
    public long mTimestamp;
    public long mTruncateFileAt;
    public boolean mWasWritten;
    public MappedByteBuffer mWriteBuffer;

    public PartialFileNode(String str, String str2) {
        this.deleteSync = new Object();
        this.mWasWritten = false;
        this.mPackageName = str2;
        this.mFile = new File(str + "/" + String.valueOf(new Date().getTime()));
        this.mTimestamp = 0L;
        this.mMarkAsDeprecated = false;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.mFile, "rwd");
            this.mRandomAccessFile = randomAccessFile;
            randomAccessFile.setLength(FILESIZE);
            FileChannel channel = this.mRandomAccessFile.getChannel();
            this.mChannel = channel;
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_WRITE, 0L, (int) channel.size());
            this.mWriteBuffer = map;
            map.mark();
        } catch (Exception e) {
            Log.e("PartialFileNode", "PartialFileNode.Exception: " + e.toString());
            InformFailure.getInstance().broadcastFailure(e, this.mPackageName);
        }
    }

    public PartialFileNode(File file, String str) {
        this.deleteSync = new Object();
        this.mWasWritten = false;
        this.mPackageName = str;
        this.mFile = file;
        setTimestamp();
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public boolean write(String str) {
        try {
        } catch (Exception e) {
            Log.e("PartialFileNode", "write.Exception: " + e.toString());
            InformFailure.getInstance().broadcastFailure(e, this.mPackageName);
        }
        if (str.getBytes().length > this.mWriteBuffer.remaining()) {
            return false;
        }
        if (this.mFile != null) {
            synchronized (this.mFile) {
                if (!this.mWasWritten) {
                    this.mWasWritten = true;
                }
                long length = this.mTruncateFileAt + str.getBytes().length;
                this.mTruncateFileAt = length;
                this.mRandomAccessFile.setLength(length);
                this.mWriteBuffer.put(str.getBytes());
            }
        }
        return true;
    }

    public void closeFile() {
        try {
            if (this.mFile == null || !this.mChannel.isOpen()) {
                return;
            }
            synchronized (this.mFile) {
                this.mRandomAccessFile.setLength(this.mTruncateFileAt);
                this.mWriteBuffer.force();
                this.mRandomAccessFile.close();
                this.mChannel.close();
            }
        } catch (Exception e) {
            Log.e("PartialFileNode", "closeFile.Exception: " + e.toString());
            InformFailure.getInstance().broadcastFailure(e, this.mPackageName);
        }
    }

    public void delete() {
        synchronized (this.deleteSync) {
            if (this.mFile != null) {
                this.mFile.delete();
                this.mFile = null;
            }
        }
    }

    public void setTimestamp() {
        if (this.mFile != null) {
            this.mTimestamp = this.mFile.lastModified();
        }
    }

    public long getFileSize() {
        if (this.mFile != null) {
            return this.mFile.length();
        }
        return 0L;
    }

    public File getFile() {
        return this.mFile;
    }

    public synchronized boolean setDeprecated(boolean z) {
        if (this.mMarkAsDeprecated) {
            return false;
        }
        this.mMarkAsDeprecated = z;
        return true;
    }

    public boolean isDeprecated() {
        return this.mMarkAsDeprecated;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0072, code lost:
    
        if (r4 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008c, code lost:
    
        if (r4 == null) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean compressFile() {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            java.io.File r2 = r7.mFile     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            if (r2 == 0) goto L66
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            r3.<init>()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.io.File r4 = r7.mFile     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.lang.String r4 = r4.getCanonicalPath()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            r3.append(r4)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.lang.String r4 = "_tmp"
            r3.append(r4)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.io.File r4 = r7.mFile     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            java.util.zip.GZIPOutputStream r5 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L90
            r5.<init>(r4)     // Catch: java.lang.Exception -> L5e java.lang.Throwable -> L90
            r1 = 65536(0x10000, float:9.18355E-41)
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
            int r6 = r3.read(r1)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
        L3b:
            if (r6 <= 0) goto L45
            r5.write(r1, r0, r6)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
            int r6 = r3.read(r1)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
            goto L3b
        L45:
            r5.finish()     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
            java.io.File r1 = r7.mFile     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
            boolean r1 = r1.delete()     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
            if (r1 == 0) goto L55
            java.io.File r7 = r7.mFile     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
            r2.renameTo(r7)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5b
        L55:
            r0 = r1
            r1 = r5
            goto L68
        L58:
            r7 = move-exception
            r1 = r5
            goto L91
        L5b:
            r7 = move-exception
            r1 = r5
            goto L7f
        L5e:
            r7 = move-exception
            goto L7f
        L60:
            r7 = move-exception
            r4 = r1
            goto L91
        L63:
            r7 = move-exception
            r4 = r1
            goto L7f
        L66:
            r3 = r1
            r4 = r3
        L68:
            if (r1 == 0) goto L6d
            r1.close()     // Catch: java.lang.Exception -> L6d
        L6d:
            if (r3 == 0) goto L72
            r3.close()     // Catch: java.lang.Exception -> L72
        L72:
            if (r4 == 0) goto L8f
        L74:
            r4.close()     // Catch: java.lang.Exception -> L8f
            goto L8f
        L78:
            r7 = move-exception
            r3 = r1
            r4 = r3
            goto L91
        L7c:
            r7 = move-exception
            r3 = r1
            r4 = r3
        L7f:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L90
            if (r1 == 0) goto L87
            r1.close()     // Catch: java.lang.Exception -> L87
        L87:
            if (r3 == 0) goto L8c
            r3.close()     // Catch: java.lang.Exception -> L8c
        L8c:
            if (r4 == 0) goto L8f
            goto L74
        L8f:
            return r0
        L90:
            r7 = move-exception
        L91:
            if (r1 == 0) goto L96
            r1.close()     // Catch: java.lang.Exception -> L96
        L96:
            if (r3 == 0) goto L9b
            r3.close()     // Catch: java.lang.Exception -> L9b
        L9b:
            if (r4 == 0) goto La0
            r4.close()     // Catch: java.lang.Exception -> La0
        La0:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.auditlog.PartialFileNode.compressFile():boolean");
    }

    public boolean getWasWritten() {
        return this.mWasWritten;
    }

    public void setWasWritten(boolean z) {
        this.mWasWritten = z;
    }
}
