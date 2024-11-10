package com.samsung.android.localeoverlaymanager;

import android.system.ErrnoException;
import android.system.Os;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZFile;

/* loaded from: classes2.dex */
public class SevenZFileCopier implements CompressedAssetCopier {
    public static final String TAG = "SevenZFileCopier";

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
    
        android.util.Log.i(com.samsung.android.localeoverlaymanager.SevenZFileCopier.TAG, "doCopy- fileName: " + r3.getName() + " fileSize: " + r3.getSize());
        writeEntryToFile(r11, r0, r3);
     */
    @Override // com.samsung.android.localeoverlaymanager.CompressedAssetCopier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void copyFile(android.content.res.AssetManager r8, java.lang.String r9, java.lang.String r10, java.io.File r11) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.localeoverlaymanager.SevenZFileCopier.copyFile(android.content.res.AssetManager, java.lang.String, java.lang.String, java.io.File):void");
    }

    public final synchronized void writeEntryToFile(File file, SevenZFile sevenZFile, SevenZArchiveEntry sevenZArchiveEntry) {
        byte[] bArr = new byte[16384];
        int size = (int) sevenZArchiveEntry.getSize();
        int read = sevenZFile.read(bArr, 0, Math.min(size, 16384));
        if (read == -1) {
            throw new IOException("Failed to read file " + sevenZArchiveEntry.getName());
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            do {
                try {
                    fileOutputStream.write(bArr, 0, read);
                    fileOutputStream.flush();
                    size -= read;
                    read = sevenZFile.read(bArr, 0, Math.min(size, 16384));
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } while (size > 0);
            FileDescriptor fd = fileOutputStream.getFD();
            if (fd != null) {
                try {
                    Os.fsync(fd);
                    try {
                        Os.close(fd);
                    } catch (ErrnoException e) {
                        throw new IOException(e);
                    }
                } catch (ErrnoException e2) {
                    throw new IOException(e2);
                }
            }
            fileOutputStream.close();
        } catch (IOException e3) {
            throw new IOException("Failed to open destinationFile " + file + " error :" + e3);
        }
    }
}
