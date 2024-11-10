package com.android.server.enterprise.auditlog;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes2.dex */
public class Dumper extends Thread {
    public long mBegin;
    public List mDeviceInfo;
    public ArrayList mDumpFilesList;
    public long mEnd;
    public SimpleDateFormat mHeaderDate;
    public IObserver mObserver;
    public ParcelFileDescriptor mPfd;
    public String mTemporaryPath;
    public String mPackageName = null;
    public StringBuilder mHeader = null;
    public File mTemporaryDirectory = null;
    public Filter mFilter = null;
    public boolean mDumpResult = true;
    public boolean mIsFullDump = false;

    public Dumper(long j, long j2, ParcelFileDescriptor parcelFileDescriptor, ArrayList arrayList, IObserver iObserver) {
        this.mPfd = parcelFileDescriptor;
        this.mDumpFilesList = arrayList;
        this.mObserver = iObserver;
        this.mBegin = j;
        this.mEnd = j2;
        this.mTemporaryPath = ((PartialFileNode) arrayList.get(0)).getFile().getParent() + "/temp/";
    }

    public void setDeviceInfo(List list) {
        this.mDeviceInfo = list;
    }

    public void setPackageName(String str) {
        this.mPackageName = str;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:16:0x002d
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0029 A[Catch: IOException -> 0x002d, TRY_LEAVE, TryCatch #3 {IOException -> 0x002d, blocks: (B:10:0x0025, B:12:0x0029, B:25:0x0062, B:27:0x0066), top: B:3:0x0005 }] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.server.enterprise.auditlog.IObserver, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v2, types: [boolean, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v3, types: [boolean] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            r6 = this;
            java.lang.String r0 = "run.IOException"
            java.lang.String r1 = "Dumper"
            r6.createHeader()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            long r2 = r6.mEnd     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 < 0) goto L1b
            long r2 = r6.mBegin     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 >= 0) goto L17
            goto L1b
        L17:
            r6.selectDumpInterval()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            goto L25
        L1b:
            r6.fullDump()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            com.android.server.enterprise.auditlog.Filter r2 = r6.mFilter     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
            if (r2 != 0) goto L25
            r2 = 1
            r6.mIsFullDump = r2     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L3c
        L25:
            android.os.ParcelFileDescriptor r2 = r6.mPfd     // Catch: java.io.IOException -> L2d
            if (r2 == 0) goto L30
            r2.close()     // Catch: java.io.IOException -> L2d
            goto L30
        L2d:
            android.util.Log.e(r1, r0)
        L30:
            com.android.server.enterprise.auditlog.IObserver r0 = r6.mObserver
            boolean r1 = r6.mDumpResult
            boolean r6 = r6.mIsFullDump
            r0.notifyDumpFinished(r1, r6)
            goto L6a
        L3a:
            r2 = move-exception
            goto L6b
        L3c:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L3a
            r3.<init>()     // Catch: java.lang.Throwable -> L3a
            java.lang.String r4 = "run.Exception "
            r3.append(r4)     // Catch: java.lang.Throwable -> L3a
            java.lang.String r4 = r2.toString()     // Catch: java.lang.Throwable -> L3a
            r3.append(r4)     // Catch: java.lang.Throwable -> L3a
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L3a
            android.util.Log.e(r1, r3)     // Catch: java.lang.Throwable -> L3a
            r3 = 0
            r6.mDumpResult = r3     // Catch: java.lang.Throwable -> L3a
            com.android.server.enterprise.auditlog.InformFailure r3 = com.android.server.enterprise.auditlog.InformFailure.getInstance()     // Catch: java.lang.Throwable -> L3a
            java.lang.String r4 = r6.mPackageName     // Catch: java.lang.Throwable -> L3a
            r3.broadcastFailure(r2, r4)     // Catch: java.lang.Throwable -> L3a
            android.os.ParcelFileDescriptor r2 = r6.mPfd     // Catch: java.io.IOException -> L2d
            if (r2 == 0) goto L30
            r2.close()     // Catch: java.io.IOException -> L2d
            goto L30
        L6a:
            return
        L6b:
            android.os.ParcelFileDescriptor r3 = r6.mPfd     // Catch: java.io.IOException -> L73
            if (r3 == 0) goto L76
            r3.close()     // Catch: java.io.IOException -> L73
            goto L76
        L73:
            android.util.Log.e(r1, r0)
        L76:
            com.android.server.enterprise.auditlog.IObserver r0 = r6.mObserver
            boolean r1 = r6.mDumpResult
            boolean r6 = r6.mIsFullDump
            r0.notifyDumpFinished(r1, r6)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.auditlog.Dumper.run():void");
    }

    public final void createHeader() {
        this.mHeader = new StringBuilder();
        this.mHeaderDate = new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");
        this.mHeader.append("----------------------------------------------\n");
        Iterator it = this.mDeviceInfo.iterator();
        if (it != null) {
            while (it.hasNext()) {
                this.mHeader.append(((String) it.next()).toString() + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
        }
        this.mHeader.append("Dump Log Generated: " + this.mHeaderDate.format(new Date()) + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        this.mHeader.append("----------------------------------------------\n");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x017c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0173 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0152 A[Catch: Exception -> 0x010c, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x010c, blocks: (B:42:0x0108, B:82:0x0152), top: B:26:0x00a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void selectDumpInterval() {
        /*
            Method dump skipped, instructions count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.auditlog.Dumper.selectDumpInterval():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v18, types: [java.util.zip.GZIPInputStream, java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.io.Closeable, java.io.Reader, java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final File readFileLineByLine(File file) {
        Object obj;
        FileOutputStream fileOutputStream;
        GZIPOutputStream gZIPOutputStream;
        Closeable closeable;
        ?? r4;
        ?? r5;
        File file2;
        ?? r15;
        GZIPOutputStream gZIPOutputStream2;
        GZIPOutputStream gZIPOutputStream3;
        File file3;
        long longValue;
        long j;
        BufferedReader bufferedReader = null;
        try {
            try {
                File file4 = new File(this.mTemporaryPath);
                this.mTemporaryDirectory = file4;
                if (!file4.exists()) {
                    this.mTemporaryDirectory.mkdir();
                }
                File file5 = new File(this.mTemporaryDirectory.getAbsolutePath() + file.getName() + "Tmp");
                try {
                    fileOutputStream = new FileOutputStream(file5);
                    try {
                        gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(fileOutputStream));
                        try {
                            r4 = new FileInputStream(file);
                        } catch (Exception e) {
                            e = e;
                            gZIPOutputStream2 = null;
                            r5 = gZIPOutputStream2;
                            gZIPOutputStream3 = gZIPOutputStream2;
                            file2 = file5;
                            closeable = r5;
                            r4 = gZIPOutputStream3;
                            try {
                                Log.e("Dumper", "readFileLineByLine.IOException");
                                InformFailure.getInstance().broadcastFailure(e, this.mPackageName);
                                safeClose(bufferedReader);
                                safeClose(r5);
                                safeClose(closeable);
                                safeClose(r4);
                                safeClose(gZIPOutputStream);
                                safeClose(fileOutputStream);
                                return file2;
                            } catch (Throwable th) {
                                th = th;
                                r15 = closeable;
                                safeClose(bufferedReader);
                                safeClose(r5);
                                safeClose(r15);
                                safeClose(r4);
                                safeClose(gZIPOutputStream);
                                safeClose(fileOutputStream);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            r15 = 0;
                            r4 = 0;
                            r5 = r4;
                            safeClose(bufferedReader);
                            safeClose(r5);
                            safeClose(r15);
                            safeClose(r4);
                            safeClose(gZIPOutputStream);
                            safeClose(fileOutputStream);
                            throw th;
                        }
                        try {
                            r15 = new GZIPInputStream(r4);
                            try {
                                r5 = new InputStreamReader((InputStream) r15, "UTF-8");
                                try {
                                    BufferedReader bufferedReader2 = new BufferedReader(r5);
                                    while (true) {
                                        try {
                                            String readLine = bufferedReader2.readLine();
                                            if (readLine == null) {
                                                break;
                                            }
                                            try {
                                                longValue = Long.valueOf(readLine.split(" ")[0]).longValue();
                                                j = this.mEnd;
                                            } catch (NumberFormatException unused) {
                                            }
                                            if (longValue > j) {
                                                break;
                                            }
                                            if (longValue >= this.mBegin && longValue <= j) {
                                                Filter filter = this.mFilter;
                                                if (filter != null) {
                                                    if (filter.filtering(readLine)) {
                                                        gZIPOutputStream.write((readLine + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE).getBytes());
                                                    }
                                                } else {
                                                    gZIPOutputStream.write((readLine + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE).getBytes());
                                                }
                                            }
                                        } catch (Exception e2) {
                                            file3 = file5;
                                            closeable = r15;
                                            e = e2;
                                            bufferedReader = bufferedReader2;
                                            file2 = file3;
                                            r4 = r4;
                                            Log.e("Dumper", "readFileLineByLine.IOException");
                                            InformFailure.getInstance().broadcastFailure(e, this.mPackageName);
                                            safeClose(bufferedReader);
                                            safeClose(r5);
                                            safeClose(closeable);
                                            safeClose(r4);
                                            safeClose(gZIPOutputStream);
                                            safeClose(fileOutputStream);
                                            return file2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            bufferedReader = bufferedReader2;
                                            safeClose(bufferedReader);
                                            safeClose(r5);
                                            safeClose(r15);
                                            safeClose(r4);
                                            safeClose(gZIPOutputStream);
                                            safeClose(fileOutputStream);
                                            throw th;
                                        }
                                    }
                                    safeClose(bufferedReader2);
                                    safeClose(r5);
                                    safeClose(r15);
                                    safeClose(r4);
                                    safeClose(gZIPOutputStream);
                                    safeClose(fileOutputStream);
                                    return file5;
                                } catch (Exception e3) {
                                    file3 = file5;
                                    closeable = r15;
                                    e = e3;
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            } catch (Exception e4) {
                                file2 = file5;
                                closeable = r15;
                                e = e4;
                                r5 = null;
                                r4 = r4;
                            } catch (Throwable th5) {
                                th = th5;
                                r5 = null;
                            }
                        } catch (Exception e5) {
                            e = e5;
                            r5 = null;
                            gZIPOutputStream3 = r4;
                            file2 = file5;
                            closeable = r5;
                            r4 = gZIPOutputStream3;
                            Log.e("Dumper", "readFileLineByLine.IOException");
                            InformFailure.getInstance().broadcastFailure(e, this.mPackageName);
                            safeClose(bufferedReader);
                            safeClose(r5);
                            safeClose(closeable);
                            safeClose(r4);
                            safeClose(gZIPOutputStream);
                            safeClose(fileOutputStream);
                            return file2;
                        } catch (Throwable th6) {
                            th = th6;
                            r15 = 0;
                            r5 = null;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        gZIPOutputStream = null;
                        gZIPOutputStream2 = gZIPOutputStream;
                        r5 = gZIPOutputStream2;
                        gZIPOutputStream3 = gZIPOutputStream2;
                        file2 = file5;
                        closeable = r5;
                        r4 = gZIPOutputStream3;
                        Log.e("Dumper", "readFileLineByLine.IOException");
                        InformFailure.getInstance().broadcastFailure(e, this.mPackageName);
                        safeClose(bufferedReader);
                        safeClose(r5);
                        safeClose(closeable);
                        safeClose(r4);
                        safeClose(gZIPOutputStream);
                        safeClose(fileOutputStream);
                        return file2;
                    } catch (Throwable th7) {
                        th = th7;
                        obj = null;
                        gZIPOutputStream = null;
                        r4 = gZIPOutputStream;
                        r15 = obj;
                        r5 = r4;
                        safeClose(bufferedReader);
                        safeClose(r5);
                        safeClose(r15);
                        safeClose(r4);
                        safeClose(gZIPOutputStream);
                        safeClose(fileOutputStream);
                        throw th;
                    }
                } catch (Exception e7) {
                    e = e7;
                    fileOutputStream = null;
                    gZIPOutputStream = null;
                }
            } catch (Throwable th8) {
                th = th8;
                obj = null;
                fileOutputStream = null;
                gZIPOutputStream = null;
            }
        } catch (Exception e8) {
            e = e8;
            closeable = null;
            fileOutputStream = null;
            gZIPOutputStream = null;
            r4 = 0;
            r5 = null;
            file2 = null;
        }
    }

    public static void safeClose(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.e("Dumper", "Failed to close resource.", e);
            }
        }
    }

    public final void createHeaderTempFile(File file) {
        FileOutputStream fileOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(fileOutputStream));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            gZIPOutputStream.write(this.mHeader.toString().getBytes());
            try {
                gZIPOutputStream.finish();
                gZIPOutputStream.close();
            } catch (Exception unused) {
            }
            try {
                fileOutputStream.close();
            } catch (Exception unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.finish();
                    gZIPOutputStream2.close();
                } catch (Exception unused3) {
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                    throw th;
                } catch (Exception unused4) {
                    throw th;
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0297 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x028e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0285 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x027c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x025c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0242 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0239 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0230 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0227 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x021e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void fullDump() {
        /*
            Method dump skipped, instructions count: 680
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.auditlog.Dumper.fullDump():void");
    }

    public final File concatenateFiles(File file, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        File file2 = new File(this.mTemporaryPath);
        this.mTemporaryDirectory = file2;
        if (!file2.exists()) {
            this.mTemporaryDirectory.mkdir();
        }
        try {
            if (!appendFileNodeToTemporaryFile(file)) {
                Log.e("Dumper", "Failed to append tempHeaderFile");
                removeTempFile();
                return null;
            }
            while (it.hasNext()) {
                PartialFileNode partialFileNode = (PartialFileNode) it.next();
                if (!partialFileNode.getWasWritten()) {
                    partialFileNode.delete();
                    it.remove();
                } else if (partialFileNode.getFile().exists() && !appendFileNodeToTemporaryFile(partialFileNode.getFile())) {
                    Log.e("Dumper", "Failed to append file node");
                    removeTempFile();
                    return null;
                }
            }
            if (this.mTemporaryDirectory == null) {
                return null;
            }
            return new File(this.mTemporaryDirectory.getAbsolutePath() + "/temp.gz");
        } catch (Exception e) {
            Log.e("Dumper", "concatenateFiles.Exception: " + e.getMessage());
            return null;
        }
    }

    public final boolean appendFileNodeToTemporaryFile(File file) {
        FileOutputStream fileOutputStream;
        File file2 = this.mTemporaryDirectory;
        if (file2 == null || !file2.exists()) {
            Log.e("Dumper", "Invalid temporary directory, cannot create file");
            return false;
        }
        FileInputStream fileInputStream = null;
        try {
            fileOutputStream = new FileOutputStream(new File(this.mTemporaryDirectory.getAbsolutePath() + "/temp.gz"), true);
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[65536];
                        while (true) {
                            int read = fileInputStream2.read(bArr);
                            if (read > 0) {
                                fileOutputStream.write(bArr, 0, read);
                            } else {
                                try {
                                    break;
                                } catch (IOException unused) {
                                }
                            }
                        }
                        fileInputStream2.close();
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused2) {
                        }
                        return true;
                    } catch (IOException e) {
                        e = e;
                        fileInputStream = fileInputStream2;
                        Log.e("Dumper", "Failed to append file: " + e.getMessage());
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused4) {
                            }
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused5) {
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                                throw th;
                            } catch (IOException unused6) {
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public final void removeTempFile() {
        if (this.mTemporaryDirectory == null) {
            return;
        }
        try {
            File file = new File(this.mTemporaryDirectory.getAbsolutePath() + "/temp.gz");
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }

    public void setFilter(Filter filter) {
        this.mFilter = filter;
    }
}
