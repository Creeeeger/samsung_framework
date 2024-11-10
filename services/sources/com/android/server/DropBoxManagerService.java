package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.BundleMerger;
import android.os.DropBoxManager;
import android.os.FileUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.text.TextUtils;
import android.text.format.TimeMigrationUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.internal.os.IDropBoxManagerService;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.ObjectUtils;
import com.android.server.DropBoxManagerInternal;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.zip.GZIPOutputStream;
import libcore.io.IoUtils;

/* loaded from: classes.dex */
public final class DropBoxManagerService extends SystemService {
    public static final List DISABLED_BY_DEFAULT_TAGS = List.of("data_app_wtf", "system_app_wtf", "system_server_wtf");
    public FileList mAllFiles;
    public int mBlockSize;
    public volatile boolean mBooted;
    public int mCachedQuotaBlocks;
    public long mCachedQuotaUptimeMillis;
    public final ContentResolver mContentResolver;
    public final File mDropBoxDir;
    public ArrayMap mFilesByTag;
    public final DropBoxManagerBroadcastHandler mHandler;
    public long mLowPriorityRateLimitPeriod;
    public ArraySet mLowPriorityTags;
    public int mMaxFiles;
    public final BroadcastReceiver mReceiver;
    public StatFs mStatFs;
    public final IDropBoxManagerService.Stub mStub;

    /* loaded from: classes.dex */
    public class ShellCmd extends ShellCommand {
        public ShellCmd() {
        }

        public int onCommand(String str) {
            char c;
            if (str == null) {
                return handleDefaultCommands(str);
            }
            PrintWriter outPrintWriter = getOutPrintWriter();
            try {
                switch (str.hashCode()) {
                    case -1412652367:
                        if (str.equals("restore-defaults")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case -529247831:
                        if (str.equals("add-low-priority")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case -444925274:
                        if (str.equals("remove-low-priority")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1936917209:
                        if (str.equals("set-rate-limit")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c == 0) {
                    DropBoxManagerService.this.setLowPriorityRateLimit(Long.parseLong(getNextArgRequired()));
                } else if (c == 1) {
                    DropBoxManagerService.this.addLowPriorityTag(getNextArgRequired());
                } else if (c == 2) {
                    DropBoxManagerService.this.removeLowPriorityTag(getNextArgRequired());
                } else if (c == 3) {
                    DropBoxManagerService.this.restoreDefaults();
                } else {
                    return handleDefaultCommands(str);
                }
            } catch (Exception e) {
                outPrintWriter.println(e);
            }
            return 0;
        }

        public void onHelp() {
            PrintWriter outPrintWriter = getOutPrintWriter();
            outPrintWriter.println("Dropbox manager service commands:");
            outPrintWriter.println("  help");
            outPrintWriter.println("    Print this help text.");
            outPrintWriter.println("  set-rate-limit PERIOD");
            outPrintWriter.println("    Sets low priority broadcast rate limit period to PERIOD ms");
            outPrintWriter.println("  add-low-priority TAG");
            outPrintWriter.println("    Add TAG to dropbox low priority list");
            outPrintWriter.println("  remove-low-priority TAG");
            outPrintWriter.println("    Remove TAG from dropbox low priority list");
            outPrintWriter.println("  restore-defaults");
            outPrintWriter.println("    restore dropbox settings to defaults");
        }
    }

    /* loaded from: classes.dex */
    public class DropBoxManagerBroadcastHandler extends Handler {
        public final ArrayMap mDeferredMap;
        public final Object mLock;

        public DropBoxManagerBroadcastHandler(Looper looper) {
            super(looper);
            this.mLock = new Object();
            this.mDeferredMap = new ArrayMap();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Intent intent;
            int i = message.what;
            if (i == 1) {
                prepareAndSendBroadcast((Intent) message.obj, null);
                return;
            }
            if (i != 2) {
                return;
            }
            synchronized (this.mLock) {
                intent = (Intent) this.mDeferredMap.remove((String) message.obj);
            }
            if (intent != null) {
                prepareAndSendBroadcast(intent, createBroadcastOptions(intent));
            }
        }

        public final void prepareAndSendBroadcast(Intent intent, Bundle bundle) {
            if (!DropBoxManagerService.this.mBooted) {
                intent.addFlags(1073741824);
            }
            DropBoxManagerService.this.getContext().sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.READ_LOGS", bundle);
        }

        public final Intent createIntent(String str, long j) {
            Intent intent = new Intent("android.intent.action.DROPBOX_ENTRY_ADDED");
            intent.putExtra("tag", str);
            intent.putExtra("time", j);
            intent.putExtra("android.os.extra.DROPPED_COUNT", 0);
            return intent;
        }

        public final Bundle createBroadcastOptions(Intent intent) {
            BundleMerger bundleMerger = new BundleMerger();
            bundleMerger.setDefaultMergeStrategy(1);
            bundleMerger.setMergeStrategy("time", 4);
            bundleMerger.setMergeStrategy("android.os.extra.DROPPED_COUNT", 25);
            return BroadcastOptions.makeBasic().setDeliveryGroupPolicy(2).setDeliveryGroupMatchingKey("android.intent.action.DROPBOX_ENTRY_ADDED", intent.getStringExtra("tag")).setDeliveryGroupExtrasMerger(bundleMerger).setDeferralPolicy(2).toBundle();
        }

        public void sendBroadcast(String str, long j) {
            sendMessage(obtainMessage(1, createIntent(str, j)));
        }

        public void maybeDeferBroadcast(String str, long j) {
            synchronized (this.mLock) {
                Intent intent = (Intent) this.mDeferredMap.get(str);
                if (intent == null) {
                    this.mDeferredMap.put(str, createIntent(str, j));
                    sendMessageDelayed(obtainMessage(2, str), DropBoxManagerService.this.mLowPriorityRateLimitPeriod);
                } else {
                    intent.putExtra("time", j);
                    intent.putExtra("android.os.extra.DROPPED_COUNT", intent.getIntExtra("android.os.extra.DROPPED_COUNT", 0) + 1);
                }
            }
        }
    }

    public DropBoxManagerService(Context context) {
        this(context, new File("/data/system/dropbox"), FgThread.get().getLooper());
    }

    public DropBoxManagerService(Context context, File file, Looper looper) {
        super(context);
        this.mAllFiles = null;
        this.mFilesByTag = null;
        this.mLowPriorityRateLimitPeriod = 0L;
        this.mLowPriorityTags = null;
        this.mStatFs = null;
        this.mBlockSize = 0;
        this.mCachedQuotaBlocks = 0;
        this.mCachedQuotaUptimeMillis = 0L;
        this.mBooted = false;
        this.mMaxFiles = -1;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.server.DropBoxManagerService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                DropBoxManagerService.this.mCachedQuotaUptimeMillis = 0L;
                new Thread() { // from class: com.android.server.DropBoxManagerService.1.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            DropBoxManagerService.this.init();
                            DropBoxManagerService.this.trimToFit();
                        } catch (IOException e) {
                            Slog.e("DropBoxManagerService", "Can't init", e);
                        }
                    }
                }.start();
            }
        };
        this.mStub = new IDropBoxManagerService.Stub() { // from class: com.android.server.DropBoxManagerService.2
            public void addData(String str, byte[] bArr, int i) {
                DropBoxManagerService.this.addData(str, bArr, i);
            }

            public void addFile(String str, ParcelFileDescriptor parcelFileDescriptor, int i) {
                DropBoxManagerService.this.addFile(str, parcelFileDescriptor, i);
            }

            public boolean isTagEnabled(String str) {
                return DropBoxManagerService.this.isTagEnabled(str);
            }

            public DropBoxManager.Entry getNextEntry(String str, long j, String str2) {
                return getNextEntryWithAttribution(str, j, str2, null);
            }

            public DropBoxManager.Entry getNextEntryWithAttribution(String str, long j, String str2, String str3) {
                return DropBoxManagerService.this.getNextEntry(str, j, str2, str3);
            }

            public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
                DropBoxManagerService.this.dump(fileDescriptor, printWriter, strArr);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
                new ShellCmd().exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
            }
        };
        this.mDropBoxDir = file;
        this.mContentResolver = getContext().getContentResolver();
        this.mHandler = new DropBoxManagerBroadcastHandler(looper);
        LocalServices.addService(DropBoxManagerInternal.class, new DropBoxManagerInternalImpl());
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("dropbox", this.mStub);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int i) {
        if (i != 500) {
            if (i != 1000) {
                return;
            }
            this.mBooted = true;
        } else {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            getContext().registerReceiver(this.mReceiver, intentFilter);
            this.mContentResolver.registerContentObserver(Settings.Global.CONTENT_URI, true, new ContentObserver(new Handler()) { // from class: com.android.server.DropBoxManagerService.3
                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    DropBoxManagerService.this.mReceiver.onReceive(DropBoxManagerService.this.getContext(), null);
                }
            });
            getLowPriorityResourceConfigs();
        }
    }

    public IDropBoxManagerService getServiceStub() {
        return this.mStub;
    }

    public void addData(String str, byte[] bArr, int i) {
        addEntry(str, new ByteArrayInputStream(bArr), bArr.length, i);
    }

    public void addFile(String str, ParcelFileDescriptor parcelFileDescriptor, int i) {
        try {
            StructStat fstat = Os.fstat(parcelFileDescriptor.getFileDescriptor());
            if (!OsConstants.S_ISREG(fstat.st_mode)) {
                throw new IllegalArgumentException(str + " entry must be real file");
            }
            addEntry(str, new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), fstat.st_size, i);
        } catch (ErrnoException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public void addEntry(String str, InputStream inputStream, long j, int i) {
        boolean z;
        if ((i & 4) != 0 || j <= 16384) {
            z = false;
        } else {
            i |= 4;
            z = true;
        }
        addEntry(str, new SimpleEntrySource(inputStream, j, z), i);
    }

    /* loaded from: classes.dex */
    public class SimpleEntrySource implements DropBoxManagerInternal.EntrySource {
        public final boolean forceCompress;
        public final InputStream in;
        public final long length;

        public SimpleEntrySource(InputStream inputStream, long j, boolean z) {
            this.in = inputStream;
            this.length = j;
            this.forceCompress = z;
        }

        @Override // com.android.server.DropBoxManagerInternal.EntrySource
        public long length() {
            return this.length;
        }

        @Override // com.android.server.DropBoxManagerInternal.EntrySource
        public void writeTo(FileDescriptor fileDescriptor) {
            if (this.forceCompress) {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new FileOutputStream(fileDescriptor));
                FileUtils.copy(this.in, gZIPOutputStream);
                gZIPOutputStream.close();
                return;
            }
            FileUtils.copy(this.in, new FileOutputStream(fileDescriptor));
        }

        @Override // com.android.server.DropBoxManagerInternal.EntrySource, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            FileUtils.closeQuietly(this.in);
        }
    }

    public void addEntry(String str, DropBoxManagerInternal.EntrySource entrySource, int i) {
        File file;
        File file2 = null;
        try {
            try {
                Slog.i("DropBoxManagerService", "add tag=" + str + " isTagEnabled=" + isTagEnabled(str) + " flags=0x" + Integer.toHexString(i));
                if ((i & 1) != 0) {
                    throw new IllegalArgumentException();
                }
                init();
                if (!isTagEnabled(str)) {
                    IoUtils.closeQuietly(entrySource);
                    return;
                }
                long length = entrySource.length();
                long trimToFit = trimToFit();
                if (length > trimToFit) {
                    Slog.w("DropBoxManagerService", "Dropping: " + str + " (" + length + " > " + trimToFit + " bytes)");
                    logDropboxDropped(6, str, 0L);
                    file = null;
                } else {
                    file = new File(this.mDropBoxDir, "drop" + Thread.currentThread().getId() + ".tmp");
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            entrySource.writeTo(fileOutputStream.getFD());
                            fileOutputStream.close();
                        } finally {
                        }
                    } catch (IOException e) {
                        e = e;
                        file2 = file;
                        Slog.e("DropBoxManagerService", "Can't write: " + str, e);
                        logDropboxDropped(5, str, 0L);
                        IoUtils.closeQuietly(entrySource);
                        if (file2 != null) {
                            file2.delete();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        file2 = file;
                        IoUtils.closeQuietly(entrySource);
                        if (file2 != null) {
                            file2.delete();
                        }
                        throw th;
                    }
                }
                long createEntry = createEntry(file, str, i);
                ArraySet arraySet = this.mLowPriorityTags;
                if (arraySet == null || !arraySet.contains(str)) {
                    this.mHandler.sendBroadcast(str, createEntry);
                } else {
                    this.mHandler.maybeDeferBroadcast(str, createEntry);
                }
                IoUtils.closeQuietly(entrySource);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void logDropboxDropped(int i, String str, long j) {
        FrameworkStatsLog.write(FrameworkStatsLog.DROPBOX_ENTRY_DROPPED, i, str, j);
    }

    public boolean isTagEnabled(String str) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (DISABLED_BY_DEFAULT_TAGS.contains(str)) {
                return "enabled".equals(Settings.Global.getString(this.mContentResolver, "dropbox:" + str));
            }
            ContentResolver contentResolver = this.mContentResolver;
            return !"disabled".equals(Settings.Global.getString(contentResolver, "dropbox:" + str));
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final boolean checkPermission(int i, String str, String str2) {
        if (getContext().checkCallingPermission("android.permission.PEEK_DROPBOX_DATA") == 0) {
            return true;
        }
        getContext().enforceCallingOrSelfPermission("android.permission.READ_LOGS", "DropBoxManagerService");
        int noteOp = ((AppOpsManager) getContext().getSystemService(AppOpsManager.class)).noteOp(43, i, str, str2, (String) null);
        if (noteOp != 0) {
            if (noteOp != 3) {
                return false;
            }
            getContext().enforceCallingOrSelfPermission("android.permission.PACKAGE_USAGE_STATS", "DropBoxManagerService");
        }
        return true;
    }

    public synchronized DropBoxManager.Entry getNextEntry(String str, long j, String str2, String str3) {
        if (!checkPermission(Binder.getCallingUid(), str2, str3)) {
            return null;
        }
        try {
            init();
            FileList fileList = str == null ? this.mAllFiles : (FileList) this.mFilesByTag.get(str);
            if (fileList == null) {
                return null;
            }
            for (EntryFile entryFile : fileList.contents.tailSet(new EntryFile(j + 1))) {
                if (entryFile.tag != null) {
                    if ((entryFile.flags & 1) != 0) {
                        return new DropBoxManager.Entry(entryFile.tag, entryFile.timestampMillis);
                    }
                    File file = entryFile.getFile(this.mDropBoxDir);
                    try {
                        return new DropBoxManager.Entry(entryFile.tag, entryFile.timestampMillis, file, entryFile.flags);
                    } catch (IOException e) {
                        Slog.wtf("DropBoxManagerService", "Can't read: " + file, e);
                    }
                }
            }
            return null;
        } catch (IOException e2) {
            Slog.e("DropBoxManagerService", "Can't init", e2);
            return null;
        }
    }

    public final synchronized void setLowPriorityRateLimit(long j) {
        this.mLowPriorityRateLimitPeriod = j;
    }

    public final synchronized void addLowPriorityTag(String str) {
        this.mLowPriorityTags.add(str);
    }

    public final synchronized void removeLowPriorityTag(String str) {
        this.mLowPriorityTags.remove(str);
    }

    public final synchronized void restoreDefaults() {
        getLowPriorityResourceConfigs();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0312 A[Catch: all -> 0x035c, TryCatch #16 {, blocks: (B:4:0x0007, B:10:0x0015, B:11:0x0018, B:14:0x0029, B:16:0x002c, B:18:0x0036, B:21:0x0042, B:23:0x004c, B:26:0x0057, B:31:0x0063, B:33:0x006d, B:35:0x0078, B:37:0x0082, B:39:0x0092, B:43:0x0098, B:54:0x00c8, B:57:0x00cd, B:59:0x0115, B:60:0x011e, B:62:0x0124, B:64:0x0133, B:65:0x0138, B:66:0x0146, B:68:0x014c, B:71:0x0159, B:73:0x015d, B:74:0x0162, B:77:0x0176, B:79:0x0181, B:84:0x018b, B:86:0x0190, B:87:0x0196, B:89:0x01a1, B:90:0x01a6, B:93:0x01b2, B:96:0x01ca, B:98:0x01e3, B:120:0x02a8, B:125:0x02ad, B:123:0x0312, B:141:0x02f8, B:143:0x02fd, B:147:0x0304, B:151:0x0309, B:149:0x030c, B:220:0x01d2, B:221:0x01d7, B:228:0x031e, B:230:0x0325, B:232:0x0334, B:236:0x032a, B:237:0x032f, B:242:0x033f), top: B:3:0x0007, inners: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02f8 A[Catch: all -> 0x035c, TRY_ENTER, TRY_LEAVE, TryCatch #16 {, blocks: (B:4:0x0007, B:10:0x0015, B:11:0x0018, B:14:0x0029, B:16:0x002c, B:18:0x0036, B:21:0x0042, B:23:0x004c, B:26:0x0057, B:31:0x0063, B:33:0x006d, B:35:0x0078, B:37:0x0082, B:39:0x0092, B:43:0x0098, B:54:0x00c8, B:57:0x00cd, B:59:0x0115, B:60:0x011e, B:62:0x0124, B:64:0x0133, B:65:0x0138, B:66:0x0146, B:68:0x014c, B:71:0x0159, B:73:0x015d, B:74:0x0162, B:77:0x0176, B:79:0x0181, B:84:0x018b, B:86:0x0190, B:87:0x0196, B:89:0x01a1, B:90:0x01a6, B:93:0x01b2, B:96:0x01ca, B:98:0x01e3, B:120:0x02a8, B:125:0x02ad, B:123:0x0312, B:141:0x02f8, B:143:0x02fd, B:147:0x0304, B:151:0x0309, B:149:0x030c, B:220:0x01d2, B:221:0x01d7, B:228:0x031e, B:230:0x0325, B:232:0x0334, B:236:0x032a, B:237:0x032f, B:242:0x033f), top: B:3:0x0007, inners: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02fd A[Catch: IOException -> 0x0310, all -> 0x035c, TRY_ENTER, TRY_LEAVE, TryCatch #6 {IOException -> 0x0310, blocks: (B:125:0x02ad, B:143:0x02fd), top: B:124:0x02ad }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0304 A[Catch: all -> 0x035c, TRY_ENTER, TRY_LEAVE, TryCatch #16 {, blocks: (B:4:0x0007, B:10:0x0015, B:11:0x0018, B:14:0x0029, B:16:0x002c, B:18:0x0036, B:21:0x0042, B:23:0x004c, B:26:0x0057, B:31:0x0063, B:33:0x006d, B:35:0x0078, B:37:0x0082, B:39:0x0092, B:43:0x0098, B:54:0x00c8, B:57:0x00cd, B:59:0x0115, B:60:0x011e, B:62:0x0124, B:64:0x0133, B:65:0x0138, B:66:0x0146, B:68:0x014c, B:71:0x0159, B:73:0x015d, B:74:0x0162, B:77:0x0176, B:79:0x0181, B:84:0x018b, B:86:0x0190, B:87:0x0196, B:89:0x01a1, B:90:0x01a6, B:93:0x01b2, B:96:0x01ca, B:98:0x01e3, B:120:0x02a8, B:125:0x02ad, B:123:0x0312, B:141:0x02f8, B:143:0x02fd, B:147:0x0304, B:151:0x0309, B:149:0x030c, B:220:0x01d2, B:221:0x01d7, B:228:0x031e, B:230:0x0325, B:232:0x0334, B:236:0x032a, B:237:0x032f, B:242:0x033f), top: B:3:0x0007, inners: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0309 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void dump(java.io.FileDescriptor r23, java.io.PrintWriter r24, java.lang.String[] r25) {
        /*
            Method dump skipped, instructions count: 863
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.DropBoxManagerService.dump(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    public final boolean matchEntry(EntryFile entryFile, ArrayList arrayList) {
        String formatMillisWithFixedFormat = TimeMigrationUtils.formatMillisWithFixedFormat(entryFile.timestampMillis);
        int size = arrayList.size();
        boolean z = true;
        for (int i = 0; i < size && z; i++) {
            String str = (String) arrayList.get(i);
            z = formatMillisWithFixedFormat.contains(str) || str.equals(entryFile.tag);
        }
        return z;
    }

    public final void dumpProtoLocked(FileDescriptor fileDescriptor, ArrayList arrayList) {
        File file;
        DropBoxManager.Entry entry;
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(fileDescriptor);
        Iterator it = this.mAllFiles.contents.iterator();
        while (it.hasNext()) {
            EntryFile entryFile = (EntryFile) it.next();
            if (matchEntry(entryFile, arrayList) && (file = entryFile.getFile(this.mDropBoxDir)) != null && (entryFile.flags & 1) == 0) {
                long start = protoOutputStream.start(2246267895809L);
                protoOutputStream.write(1112396529665L, entryFile.timestampMillis);
                try {
                    entry = new DropBoxManager.Entry(entryFile.tag, entryFile.timestampMillis, file, entryFile.flags);
                } catch (IOException e) {
                    Slog.e("DropBoxManagerService", "Can't read: " + file, e);
                }
                try {
                    InputStream inputStream = entry.getInputStream();
                    if (inputStream != null) {
                        try {
                            byte[] bArr = new byte[262144];
                            int i = 0;
                            int i2 = 0;
                            while (i >= 0) {
                                i2 += i;
                                if (i2 >= 262144) {
                                    break;
                                } else {
                                    i = inputStream.read(bArr, i2, 262144 - i2);
                                }
                            }
                            protoOutputStream.write(1151051235330L, Arrays.copyOf(bArr, i2));
                        } catch (Throwable th) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                            break;
                        }
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    entry.close();
                    protoOutputStream.end(start);
                } catch (Throwable th3) {
                    try {
                        entry.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                    break;
                }
            }
        }
        protoOutputStream.flush();
    }

    /* loaded from: classes.dex */
    public final class FileList implements Comparable {
        public int blocks;
        public final TreeSet contents;

        public FileList() {
            this.blocks = 0;
            this.contents = new TreeSet();
        }

        @Override // java.lang.Comparable
        public final int compareTo(FileList fileList) {
            int i = this.blocks;
            int i2 = fileList.blocks;
            if (i != i2) {
                return i2 - i;
            }
            if (this == fileList) {
                return 0;
            }
            if (hashCode() < fileList.hashCode()) {
                return -1;
            }
            return hashCode() > fileList.hashCode() ? 1 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class EntryFile implements Comparable {
        public final int blocks;
        public final int flags;
        public final String tag;
        public final long timestampMillis;

        @Override // java.lang.Comparable
        public final int compareTo(EntryFile entryFile) {
            int compare = Long.compare(this.timestampMillis, entryFile.timestampMillis);
            if (compare != 0) {
                return compare;
            }
            int compare2 = ObjectUtils.compare(this.tag, entryFile.tag);
            if (compare2 != 0) {
                return compare2;
            }
            int compare3 = Integer.compare(this.flags, entryFile.flags);
            return compare3 != 0 ? compare3 : Integer.compare(hashCode(), entryFile.hashCode());
        }

        public EntryFile(File file, File file2, String str, long j, int i, int i2) {
            if ((i & 1) != 0) {
                throw new IllegalArgumentException();
            }
            this.tag = TextUtils.safeIntern(str);
            this.timestampMillis = j;
            this.flags = i;
            File file3 = getFile(file2);
            if (!file.renameTo(file3)) {
                throw new IOException("Can't rename " + file + " to " + file3);
            }
            long j2 = i2;
            this.blocks = (int) (((file3.length() + j2) - 1) / j2);
        }

        public EntryFile(File file, String str, long j) {
            this.tag = TextUtils.safeIntern(str);
            this.timestampMillis = j;
            this.flags = 1;
            this.blocks = 0;
            new FileOutputStream(getFile(file)).close();
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:6:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x00a5  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public EntryFile(java.io.File r12, int r13) {
            /*
                r11 = this;
                r11.<init>()
                java.lang.String r0 = r12.getName()
                r1 = 64
                int r1 = r0.lastIndexOf(r1)
                r2 = 1
                r3 = 0
                r4 = 0
                r5 = 0
                if (r1 >= 0) goto L1a
                r1 = r2
                r8 = r3
                r7 = r4
            L17:
                r9 = r5
                goto L81
            L1a:
                java.lang.String r7 = r0.substring(r3, r1)
                java.lang.String r7 = android.net.Uri.decode(r7)
                java.lang.String r8 = ".gz"
                boolean r8 = r0.endsWith(r8)
                r9 = 4
                if (r8 == 0) goto L37
                int r8 = r0.length()
                int r8 = r8 + (-3)
                java.lang.String r0 = r0.substring(r3, r8)
                r8 = r9
                goto L38
            L37:
                r8 = r3
            L38:
                java.lang.String r10 = ".lost"
                boolean r10 = r0.endsWith(r10)
                if (r10 == 0) goto L4f
                r8 = r8 | 1
                int r1 = r1 + r2
                int r9 = r0.length()
                int r9 = r9 + (-5)
                java.lang.String r0 = r0.substring(r1, r9)
            L4d:
                r1 = r3
                goto L78
            L4f:
                java.lang.String r10 = ".txt"
                boolean r10 = r0.endsWith(r10)
                if (r10 == 0) goto L64
                r8 = r8 | 2
                int r1 = r1 + r2
                int r10 = r0.length()
                int r10 = r10 - r9
                java.lang.String r0 = r0.substring(r1, r10)
                goto L4d
            L64:
                java.lang.String r10 = ".dat"
                boolean r10 = r0.endsWith(r10)
                if (r10 == 0) goto L77
                int r1 = r1 + r2
                int r10 = r0.length()
                int r10 = r10 - r9
                java.lang.String r0 = r0.substring(r1, r10)
                goto L4d
            L77:
                r1 = r2
            L78:
                if (r1 != 0) goto L17
                long r9 = java.lang.Long.parseLong(r0)     // Catch: java.lang.NumberFormatException -> L7f
                goto L81
            L7f:
                r1 = r2
                goto L17
            L81:
                if (r1 == 0) goto La5
                java.lang.StringBuilder r13 = new java.lang.StringBuilder
                r13.<init>()
                java.lang.String r0 = "Invalid filename: "
                r13.append(r0)
                r13.append(r12)
                java.lang.String r13 = r13.toString()
                java.lang.String r0 = "DropBoxManagerService"
                android.util.Slog.wtf(r0, r13)
                r12.delete()
                r11.tag = r4
                r11.flags = r2
                r11.timestampMillis = r5
                r11.blocks = r3
                return
            La5:
                long r0 = r12.length()
                long r12 = (long) r13
                long r0 = r0 + r12
                r2 = 1
                long r0 = r0 - r2
                long r0 = r0 / r12
                int r12 = (int) r0
                r11.blocks = r12
                java.lang.String r12 = android.text.TextUtils.safeIntern(r7)
                r11.tag = r12
                r11.flags = r8
                r11.timestampMillis = r9
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.DropBoxManagerService.EntryFile.<init>(java.io.File, int):void");
        }

        public EntryFile(long j) {
            this.tag = null;
            this.timestampMillis = j;
            this.flags = 1;
            this.blocks = 0;
        }

        public boolean hasFile() {
            return this.tag != null;
        }

        public final String getExtension() {
            if ((this.flags & 1) != 0) {
                return ".lost";
            }
            StringBuilder sb = new StringBuilder();
            sb.append((this.flags & 2) != 0 ? ".txt" : ".dat");
            sb.append((this.flags & 4) != 0 ? ".gz" : "");
            return sb.toString();
        }

        public String getFilename() {
            if (!hasFile()) {
                return null;
            }
            return Uri.encode(this.tag) + "@" + this.timestampMillis + getExtension();
        }

        public File getFile(File file) {
            if (hasFile()) {
                return new File(file, getFilename());
            }
            return null;
        }

        public void deleteFile(File file) {
            if (hasFile()) {
                getFile(file).delete();
            }
        }
    }

    public final synchronized void init() {
        if (this.mStatFs == null) {
            if (!this.mDropBoxDir.isDirectory() && !this.mDropBoxDir.mkdirs()) {
                throw new IOException("Can't mkdir: " + this.mDropBoxDir);
            }
            try {
                StatFs statFs = new StatFs(this.mDropBoxDir.getPath());
                this.mStatFs = statFs;
                this.mBlockSize = statFs.getBlockSize();
            } catch (IllegalArgumentException unused) {
                throw new IOException("Can't statfs: " + this.mDropBoxDir);
            }
        }
        if (this.mAllFiles == null) {
            File[] listFiles = this.mDropBoxDir.listFiles();
            if (listFiles == null) {
                throw new IOException("Can't list files: " + this.mDropBoxDir);
            }
            this.mAllFiles = new FileList();
            this.mFilesByTag = new ArrayMap();
            for (File file : listFiles) {
                if (file.getName().endsWith(".tmp")) {
                    Slog.i("DropBoxManagerService", "Cleaning temp file: " + file);
                    file.delete();
                } else {
                    EntryFile entryFile = new EntryFile(file, this.mBlockSize);
                    if (entryFile.hasFile()) {
                        enrollEntry(entryFile);
                    }
                }
            }
        }
    }

    public final synchronized void enrollEntry(EntryFile entryFile) {
        this.mAllFiles.contents.add(entryFile);
        this.mAllFiles.blocks += entryFile.blocks;
        if (entryFile.hasFile() && entryFile.blocks > 0) {
            FileList fileList = (FileList) this.mFilesByTag.get(entryFile.tag);
            if (fileList == null) {
                fileList = new FileList();
                this.mFilesByTag.put(TextUtils.safeIntern(entryFile.tag), fileList);
            }
            fileList.contents.add(entryFile);
            fileList.blocks += entryFile.blocks;
        }
    }

    public final synchronized long createEntry(File file, String str, int i) {
        long currentTimeMillis;
        EntryFile[] entryFileArr;
        currentTimeMillis = System.currentTimeMillis();
        SortedSet tailSet = this.mAllFiles.contents.tailSet(new EntryFile(10000 + currentTimeMillis));
        if (tailSet.isEmpty()) {
            entryFileArr = null;
        } else {
            entryFileArr = (EntryFile[]) tailSet.toArray(new EntryFile[tailSet.size()]);
            tailSet.clear();
        }
        if (!this.mAllFiles.contents.isEmpty()) {
            currentTimeMillis = Math.max(currentTimeMillis, ((EntryFile) this.mAllFiles.contents.last()).timestampMillis + 1);
        }
        if (entryFileArr != null) {
            long j = currentTimeMillis;
            for (EntryFile entryFile : entryFileArr) {
                this.mAllFiles.blocks -= entryFile.blocks;
                FileList fileList = (FileList) this.mFilesByTag.get(entryFile.tag);
                if (fileList != null && fileList.contents.remove(entryFile)) {
                    fileList.blocks -= entryFile.blocks;
                }
                if ((entryFile.flags & 1) == 0) {
                    enrollEntry(new EntryFile(entryFile.getFile(this.mDropBoxDir), this.mDropBoxDir, entryFile.tag, j, entryFile.flags, this.mBlockSize));
                    j++;
                } else {
                    enrollEntry(new EntryFile(this.mDropBoxDir, entryFile.tag, j));
                    j++;
                }
            }
            currentTimeMillis = j;
        }
        if (file == null) {
            enrollEntry(new EntryFile(this.mDropBoxDir, str, currentTimeMillis));
        } else {
            enrollEntry(new EntryFile(file, this.mDropBoxDir, str, currentTimeMillis, i, this.mBlockSize));
        }
        return currentTimeMillis;
    }

    public final synchronized long trimToFit() {
        int i = Settings.Global.getInt(this.mContentResolver, "dropbox_age_seconds", 259200);
        this.mMaxFiles = Settings.Global.getInt(this.mContentResolver, "dropbox_max_files", ActivityManager.isLowRamDeviceStatic() ? 300 : 1000);
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - (i * 1000);
        while (!this.mAllFiles.contents.isEmpty()) {
            EntryFile entryFile = (EntryFile) this.mAllFiles.contents.first();
            if (entryFile.timestampMillis > j && this.mAllFiles.contents.size() < this.mMaxFiles) {
                break;
            }
            logDropboxDropped(4, entryFile.tag, currentTimeMillis - entryFile.timestampMillis);
            FileList fileList = (FileList) this.mFilesByTag.get(entryFile.tag);
            if (fileList != null && fileList.contents.remove(entryFile)) {
                fileList.blocks -= entryFile.blocks;
            }
            if (this.mAllFiles.contents.remove(entryFile)) {
                this.mAllFiles.blocks -= entryFile.blocks;
            }
            entryFile.deleteFile(this.mDropBoxDir);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        int i2 = 0;
        if (uptimeMillis > this.mCachedQuotaUptimeMillis + 5000) {
            int i3 = Settings.Global.getInt(this.mContentResolver, "dropbox_quota_percent", 10);
            int i4 = Settings.Global.getInt(this.mContentResolver, "dropbox_reserve_percent", 0);
            int i5 = Settings.Global.getInt(this.mContentResolver, "dropbox_quota_kb", 10240);
            try {
                this.mStatFs.restat(this.mDropBoxDir.getPath());
                this.mCachedQuotaBlocks = Math.min((i5 * 1024) / this.mBlockSize, Math.toIntExact(Math.max(0L, Math.min(((this.mStatFs.getAvailableBlocksLong() - ((this.mStatFs.getBlockCountLong() * i4) / 100)) * i3) / 100, 2147483647L))));
                this.mCachedQuotaUptimeMillis = uptimeMillis;
            } catch (IllegalArgumentException unused) {
                throw new IOException("Can't restat: " + this.mDropBoxDir);
            }
        }
        int i6 = this.mAllFiles.blocks;
        if (i6 > this.mCachedQuotaBlocks) {
            TreeSet treeSet = new TreeSet(this.mFilesByTag.values());
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                FileList fileList2 = (FileList) it.next();
                if (i2 > 0 && fileList2.blocks <= (this.mCachedQuotaBlocks - i6) / i2) {
                    break;
                }
                i6 -= fileList2.blocks;
                i2++;
            }
            int i7 = (this.mCachedQuotaBlocks - i6) / i2;
            Iterator it2 = treeSet.iterator();
            while (it2.hasNext()) {
                FileList fileList3 = (FileList) it2.next();
                if (this.mAllFiles.blocks < this.mCachedQuotaBlocks) {
                    break;
                }
                while (fileList3.blocks > i7 && !fileList3.contents.isEmpty()) {
                    EntryFile entryFile2 = (EntryFile) fileList3.contents.first();
                    logDropboxDropped(3, entryFile2.tag, currentTimeMillis - entryFile2.timestampMillis);
                    if (fileList3.contents.remove(entryFile2)) {
                        fileList3.blocks -= entryFile2.blocks;
                    }
                    if (this.mAllFiles.contents.remove(entryFile2)) {
                        this.mAllFiles.blocks -= entryFile2.blocks;
                    }
                    try {
                        entryFile2.deleteFile(this.mDropBoxDir);
                        enrollEntry(new EntryFile(this.mDropBoxDir, entryFile2.tag, entryFile2.timestampMillis));
                    } catch (IOException e) {
                        Slog.e("DropBoxManagerService", "Can't write tombstone file", e);
                    }
                }
            }
        }
        return this.mCachedQuotaBlocks * this.mBlockSize;
    }

    public final void getLowPriorityResourceConfigs() {
        this.mLowPriorityRateLimitPeriod = Resources.getSystem().getInteger(R.integer.config_ntpRetry);
        String[] stringArray = Resources.getSystem().getStringArray(17236201);
        int length = stringArray.length;
        if (length == 0) {
            this.mLowPriorityTags = null;
            return;
        }
        this.mLowPriorityTags = new ArraySet(length);
        for (String str : stringArray) {
            this.mLowPriorityTags.add(str);
        }
    }

    /* loaded from: classes.dex */
    public final class DropBoxManagerInternalImpl extends DropBoxManagerInternal {
        public DropBoxManagerInternalImpl() {
        }

        @Override // com.android.server.DropBoxManagerInternal
        public void addEntry(String str, DropBoxManagerInternal.EntrySource entrySource, int i) {
            DropBoxManagerService.this.addEntry(str, entrySource, i);
        }
    }
}
