package com.android.server.storage;

import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManagerInternal;
import android.os.Binder;
import android.os.Environment;
import android.os.FileObserver;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.StatFs;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.os.storage.VolumeInfo;
import android.provider.DeviceConfig;
import android.util.ArrayMap;
import android.util.DataUnit;
import android.util.LocalLog;
import android.util.Slog;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class DeviceStorageMonitorService extends SystemService {
    public DeviceStorageMonitorYuva dsm_yuva;
    public CacheFileDeletedObserver mCacheFileDeletedObserver;
    public volatile int mFnForceLevel;
    public final ArrayMap mFnStates;
    public volatile int mForceLevel;
    public final Handler mHandler;
    public final HandlerThread mHandlerThread;
    public LocalLog mLocalLog;
    public final DeviceStorageMonitorInternal mLocalService;
    public NotificationManager mNotifManager;
    public final Binder mRemoteService;
    public final AtomicInteger mSeq;
    public final ArrayMap mStates;
    public static final long DEFAULT_LOG_DELTA_BYTES = DataUnit.MEBIBYTES.toBytes(64);
    public static final long BOOT_IMAGE_STORAGE_REQUIREMENT = DataUnit.MEBIBYTES.toBytes(250);
    public static long mFullBytes = 0;
    public static long mLowBytes = 0;
    public static long mWarningBytes = 0;
    public static long mCautionBytes = 0;
    public static long mExhaustionBytes = 0;
    public static long mTotalBytes = 0;
    public static long mUsableBytes = 0;
    public static long mFullFileNodes = 0;
    public static long mLowFileNodes = 0;
    public static long mTotalFileNode = 0;
    public static long mUsableFileNode = 0;
    public static long mLastReportedFreeMemTime = 0;
    public static long mRomTotalBytes = 0;

    /* loaded from: classes3.dex */
    public class State {
        public static boolean isExhaustion = false;
        public long lastUsableBytes;
        public int level;

        public static boolean isEntering(int i, int i2, int i3) {
            return i3 >= i && (i2 < i || i2 == -1);
        }

        public static boolean isLeaving(int i, int i2, int i3) {
            return i3 < i && (i2 >= i || i2 == -1);
        }

        public State() {
            this.level = 0;
            this.lastUsableBytes = Long.MAX_VALUE;
        }

        public static String levelToString(int i) {
            return i != -1 ? i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? Integer.toString(i) : "FULL" : "LOW" : "WARNING" : "CAUTION" : "NORMAL" : "UNKNOWN";
        }
    }

    /* loaded from: classes3.dex */
    public class FileNodeState {
        public int level;

        public static boolean isEntering(int i, int i2, int i3) {
            return i3 >= i && (i2 < i || i2 == -1);
        }

        public static boolean isLeaving(int i, int i2, int i3) {
            return i3 < i && (i2 >= i || i2 == -1);
        }

        public FileNodeState() {
            this.level = 0;
        }

        public static String levelToString(int i) {
            return i != -1 ? i != 0 ? i != 1 ? i != 2 ? Integer.toString(i) : "FN_FULL" : "FN_LOW" : "FN_NORMAL" : "FN_UNKNOWN";
        }
    }

    public final State findOrCreateState(UUID uuid) {
        State state = (State) this.mStates.get(uuid);
        if (state != null) {
            return state;
        }
        State state2 = new State();
        this.mStates.put(uuid, state2);
        return state2;
    }

    public final FileNodeState findOrCreateFileNodeState(UUID uuid) {
        FileNodeState fileNodeState = (FileNodeState) this.mFnStates.get(uuid);
        if (fileNodeState != null) {
            return fileNodeState;
        }
        FileNodeState fileNodeState2 = new FileNodeState();
        this.mFnStates.put(uuid, fileNodeState2);
        return fileNodeState2;
    }

    public final long check_f2fs_stat_ffree() {
        StatFs statFs = new StatFs("/data");
        StorageManager storageManager = (StorageManager) getContext().getSystemService(StorageManager.class);
        long totalFileNode = statFs.getTotalFileNode();
        long usedF2fsFileNode = storageManager.getUsedF2fsFileNode();
        long j = -1;
        if (usedF2fsFileNode == -1) {
            Slog.d("DeviceStorageMonitorService", "Cannot get USED FILE NODE NUMBER!!!");
        } else {
            j = totalFileNode - usedF2fsFileNode;
        }
        Slog.d("DeviceStorageMonitorService", "Available File Node Number is [" + j + "]");
        return j;
    }

    public final long getStorageWarningSize() {
        long bytes;
        double bytes2;
        double d;
        if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 32) {
            bytes2 = DataUnit.GIBIBYTES.toBytes(1L);
            d = 1.6d;
        } else {
            if (mRomTotalBytes > DataUnit.GIBIBYTES.toBytes(1L) * 64) {
                double d2 = 6.4d;
                if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 128) {
                    bytes = DataUnit.GIBIBYTES.toBytes(1L);
                } else if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 256) {
                    bytes = DataUnit.GIBIBYTES.toBytes(1L);
                } else {
                    d2 = 12.8d;
                    if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 512) {
                        bytes = DataUnit.GIBIBYTES.toBytes(1L);
                    } else {
                        if (mRomTotalBytes > DataUnit.GIBIBYTES.toBytes(1L) * 1024) {
                            return 0L;
                        }
                        bytes = DataUnit.GIBIBYTES.toBytes(1L);
                    }
                }
                return (long) (bytes * d2);
            }
            bytes2 = DataUnit.GIBIBYTES.toBytes(1L);
            d = 3.2d;
        }
        return (long) (bytes2 * d);
    }

    public final long getStorageCautionSize() {
        long bytes;
        if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 32) {
            return DataUnit.GIBIBYTES.toBytes(1L) * 5;
        }
        if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 64) {
            return (long) (DataUnit.GIBIBYTES.toBytes(1L) * 6.4d);
        }
        double d = 12.8d;
        if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 128) {
            bytes = DataUnit.GIBIBYTES.toBytes(1L);
        } else if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 256) {
            bytes = DataUnit.GIBIBYTES.toBytes(1L);
        } else {
            d = 25.6d;
            if (mRomTotalBytes <= DataUnit.GIBIBYTES.toBytes(1L) * 512) {
                bytes = DataUnit.GIBIBYTES.toBytes(1L);
            } else {
                if (mRomTotalBytes > DataUnit.GIBIBYTES.toBytes(1L) * 1024) {
                    return 0L;
                }
                bytes = DataUnit.GIBIBYTES.toBytes(1L);
            }
        }
        return (long) (bytes * d);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0177 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0207 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void checkLow() {
        /*
            Method dump skipped, instructions count: 574
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.storage.DeviceStorageMonitorService.checkLow():void");
    }

    public final void checkHigh() {
        StorageManager storageManager = (StorageManager) getContext().getSystemService(StorageManager.class);
        int i = DeviceConfig.getInt("storage_native_boot", "storage_threshold_percent_high", 20);
        for (VolumeInfo volumeInfo : storageManager.getWritablePrivateVolumes()) {
            File path = volumeInfo.getPath();
            if (path.getUsableSpace() < (path.getTotalSpace() * i) / 100) {
                try {
                    ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).freeAllAppCacheAboveQuota(volumeInfo.getFsUuid());
                } catch (IOException e) {
                    Slog.w("DeviceStorageMonitorService", e);
                }
            }
        }
        if (this.mHandler.hasMessages(2)) {
            return;
        }
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(handler.obtainMessage(2), 36000000L);
    }

    public DeviceStorageMonitorService(Context context) {
        super(context);
        this.mSeq = new AtomicInteger(1);
        this.mForceLevel = -1;
        this.mFnForceLevel = -1;
        this.mStates = new ArrayMap();
        this.mFnStates = new ArrayMap();
        this.mLocalService = new DeviceStorageMonitorInternal() { // from class: com.android.server.storage.DeviceStorageMonitorService.2
            @Override // com.android.server.storage.DeviceStorageMonitorInternal
            public void checkMemory() {
                DeviceStorageMonitorService.this.mHandler.removeMessages(1);
                DeviceStorageMonitorService.this.mHandler.obtainMessage(1).sendToTarget();
            }

            @Override // com.android.server.storage.DeviceStorageMonitorInternal
            public boolean isMemoryLow() {
                return Environment.getDataDirectory().getUsableSpace() < getMemoryLowThreshold();
            }

            public long getMemoryLowThreshold() {
                return ((StorageManager) DeviceStorageMonitorService.this.getContext().getSystemService(StorageManager.class)).getStorageLowBytes(Environment.getDataDirectory());
            }
        };
        this.mRemoteService = new Binder() { // from class: com.android.server.storage.DeviceStorageMonitorService.3
            @Override // android.os.Binder
            public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
                if (DumpUtils.checkDumpPermission(DeviceStorageMonitorService.this.getContext(), "DeviceStorageMonitorService", printWriter)) {
                    DeviceStorageMonitorService.this.dumpImpl(fileDescriptor, printWriter, strArr);
                }
            }

            public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
                new Shell().exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
            }
        };
        HandlerThread handlerThread = new HandlerThread("DeviceStorageMonitorService", 10);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper()) { // from class: com.android.server.storage.DeviceStorageMonitorService.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    DeviceStorageMonitorService.this.checkLow();
                } else {
                    if (i != 2) {
                        return;
                    }
                    DeviceStorageMonitorService.this.checkHigh();
                }
            }
        };
        this.mLocalLog = new LocalLog(20);
        this.dsm_yuva = new DeviceStorageMonitorYuva(context);
    }

    public final void loge(String str) {
        Slog.e("DeviceStorageMonitorService", str);
        this.mLocalLog.log(str);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        Context context = getContext();
        this.mNotifManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        CacheFileDeletedObserver cacheFileDeletedObserver = new CacheFileDeletedObserver();
        this.mCacheFileDeletedObserver = cacheFileDeletedObserver;
        cacheFileDeletedObserver.startWatching();
        if (context.getPackageManager().hasSystemFeature("android.software.leanback")) {
            this.mNotifManager.createNotificationChannel(new NotificationChannel("devicestoragemonitor.tv", context.getString(R.string.location_changed_notification_text), 4));
        }
        publishBinderService("devicestoragemonitor", this.mRemoteService);
        publishLocalService(DeviceStorageMonitorInternal.class, this.mLocalService);
        mRomTotalBytes = FileUtils.roundStorageSize(Environment.getDataDirectory().getTotalSpace() + Environment.getRootDirectory().getTotalSpace());
        this.mHandler.removeMessages(1);
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    /* loaded from: classes3.dex */
    public class Shell extends ShellCommand {
        public Shell() {
        }

        public int onCommand(String str) {
            return DeviceStorageMonitorService.this.onShellCommand(this, str);
        }

        public void onHelp() {
            DeviceStorageMonitorService.dumpHelp(getOutPrintWriter());
        }
    }

    public int parseOptions(Shell shell) {
        int i = 0;
        while (true) {
            String nextOption = shell.getNextOption();
            if (nextOption == null) {
                return i;
            }
            if ("-f".equals(nextOption)) {
                i |= 1;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int onShellCommand(Shell shell, String str) {
        char c;
        if (str == null) {
            return shell.handleDefaultCommands(str);
        }
        PrintWriter outPrintWriter = shell.getOutPrintWriter();
        switch (str.hashCode()) {
            case 108404047:
                if (str.equals("reset")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1526871410:
                if (str.equals("force-low")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1692300408:
                if (str.equals("force-not-low")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                int parseOptions = parseOptions(shell);
                getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                this.mForceLevel = -1;
                int incrementAndGet = this.mSeq.incrementAndGet();
                if ((parseOptions & 1) != 0) {
                    this.mHandler.removeMessages(1);
                    this.mHandler.obtainMessage(1).sendToTarget();
                    outPrintWriter.println(incrementAndGet);
                }
                return 0;
            case 1:
                int parseOptions2 = parseOptions(shell);
                getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                this.mForceLevel = 3;
                int incrementAndGet2 = this.mSeq.incrementAndGet();
                if ((parseOptions2 & 1) != 0) {
                    this.mHandler.removeMessages(1);
                    this.mHandler.obtainMessage(1).sendToTarget();
                    outPrintWriter.println(incrementAndGet2);
                }
                return 0;
            case 2:
                int parseOptions3 = parseOptions(shell);
                getContext().enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                this.mForceLevel = 0;
                int incrementAndGet3 = this.mSeq.incrementAndGet();
                if ((parseOptions3 & 1) != 0) {
                    this.mHandler.removeMessages(1);
                    this.mHandler.obtainMessage(1).sendToTarget();
                    outPrintWriter.println(incrementAndGet3);
                }
                return 0;
            default:
                return shell.handleDefaultCommands(str);
        }
    }

    public static void dumpHelp(PrintWriter printWriter) {
        printWriter.println("Device storage monitor service (devicestoragemonitor) commands:");
        printWriter.println("  help");
        printWriter.println("    Print this help text.");
        printWriter.println("  force-low [-f]");
        printWriter.println("    Force storage to be low, freezing storage state.");
        printWriter.println("    -f: force a storage change broadcast be sent, prints new sequence.");
        printWriter.println("  force-not-low [-f]");
        printWriter.println("    Force storage to not be low, freezing storage state.");
        printWriter.println("    -f: force a storage change broadcast be sent, prints new sequence.");
        printWriter.println("  reset [-f]");
        printWriter.println("    Unfreeze storage state, returning to current real values.");
        printWriter.println("    -f: force a storage change broadcast be sent, prints new sequence.");
    }

    public void dumpImpl(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
        if (strArr == null || strArr.length == 0 || "-a".equals(strArr[0])) {
            StorageManager storageManager = (StorageManager) getContext().getSystemService(StorageManager.class);
            indentingPrintWriter.println("Known volumes:");
            indentingPrintWriter.increaseIndent();
            for (int i = 0; i < this.mStates.size(); i++) {
                UUID uuid = (UUID) this.mStates.keyAt(i);
                State state = (State) this.mStates.valueAt(i);
                if (StorageManager.UUID_DEFAULT.equals(uuid)) {
                    indentingPrintWriter.println("Default:");
                } else {
                    indentingPrintWriter.println(uuid + XmlUtils.STRING_ARRAY_SEPARATOR);
                }
                indentingPrintWriter.increaseIndent();
                indentingPrintWriter.printPair("level", State.levelToString(state.level));
                indentingPrintWriter.printPair("lastUsableBytes", Long.valueOf(state.lastUsableBytes));
                indentingPrintWriter.println();
                Iterator it = storageManager.getWritablePrivateVolumes().iterator();
                while (true) {
                    if (it.hasNext()) {
                        VolumeInfo volumeInfo = (VolumeInfo) it.next();
                        File path = volumeInfo.getPath();
                        if (Objects.equals(uuid, StorageManager.convert(volumeInfo.getFsUuid()))) {
                            indentingPrintWriter.print("lowBytes=");
                            indentingPrintWriter.print(storageManager.getStorageLowBytes(path));
                            indentingPrintWriter.print(" fullBytes=");
                            indentingPrintWriter.println(storageManager.getStorageFullBytes(path));
                            indentingPrintWriter.print("path=");
                            indentingPrintWriter.println(path);
                            break;
                        }
                    }
                }
                indentingPrintWriter.decreaseIndent();
            }
            for (int i2 = 0; i2 < this.mFnStates.size(); i2++) {
                UUID uuid2 = (UUID) this.mFnStates.keyAt(i2);
                FileNodeState fileNodeState = (FileNodeState) this.mFnStates.valueAt(i2);
                if (StorageManager.UUID_DEFAULT.equals(uuid2)) {
                    indentingPrintWriter.println("Default:");
                } else {
                    indentingPrintWriter.println(uuid2 + XmlUtils.STRING_ARRAY_SEPARATOR);
                }
                indentingPrintWriter.increaseIndent();
                indentingPrintWriter.printPair("level", FileNodeState.levelToString(fileNodeState.level));
                indentingPrintWriter.println();
                indentingPrintWriter.decreaseIndent();
            }
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.println();
            indentingPrintWriter.printPair("mSeq", Integer.valueOf(this.mSeq.get()));
            indentingPrintWriter.printPair("mForceState", State.levelToString(this.mForceLevel));
            indentingPrintWriter.println();
            indentingPrintWriter.println();
            indentingPrintWriter.println("Storage info : ");
            indentingPrintWriter.println("  mRomTotalBytes : " + mRomTotalBytes);
            indentingPrintWriter.println();
            indentingPrintWriter.println("  mFullBytes : " + mFullBytes);
            indentingPrintWriter.println("  mLowBytes : " + mLowBytes);
            indentingPrintWriter.println("  mWarningBytes : " + mWarningBytes);
            indentingPrintWriter.println("  mCautionBytes : " + mCautionBytes);
            indentingPrintWriter.println("  mExhaustionBytes : " + mExhaustionBytes);
            indentingPrintWriter.println("  mTotalBytes : " + mTotalBytes);
            indentingPrintWriter.println("  mUsableBytes : " + mUsableBytes);
            indentingPrintWriter.println();
            indentingPrintWriter.println("  mFullFileNodes : " + mFullFileNodes);
            indentingPrintWriter.println("  mLowFileNodes : " + mLowFileNodes);
            indentingPrintWriter.println("  mTotalFileNode : " + mTotalFileNode);
            indentingPrintWriter.println("  mUsableFileNode : " + mUsableFileNode);
            indentingPrintWriter.println();
            indentingPrintWriter.println("Log history : ");
            this.mLocalLog.dump(fileDescriptor, indentingPrintWriter, strArr);
            indentingPrintWriter.println();
            return;
        }
        new Shell().exec(this.mRemoteService, (FileDescriptor) null, fileDescriptor, (FileDescriptor) null, strArr, (ShellCallback) null, new ResultReceiver(null));
    }

    public final void updateExhaustionBroadcasts(VolumeInfo volumeInfo, boolean z, int i) {
        Slog.w("DeviceStorageMonitorService", "updateExhaustionBroadcasts(" + volumeInfo.path + ") seq:" + i);
        Intent putExtra = new Intent("com.samsung.intent.action.DEVICE_STORAGE_EXHAUSTION").addFlags(67108864).addFlags(16777216).putExtra("seq", i);
        Intent putExtra2 = new Intent("com.samsung.intent.action.DEVICE_STORAGE_NOT_EXHAUSTION").addFlags(67108864).putExtra("seq", i);
        if (z) {
            loge("updateExhaustionBroadcasts(" + volumeInfo.path + ") sending intent : ACTION_DEVICE_STORAGE_EXHAUSTION");
            loge("mUsableBytes : " + mUsableBytes + ", mUsableFileNode : " + mUsableFileNode);
            getContext().sendStickyBroadcastAsUser(putExtra, UserHandle.ALL);
            return;
        }
        loge("updateExhaustionBroadcasts(" + volumeInfo.path + ") sending intent : ACTION_DEVICE_STORAGE_NOT_EXHAUSTION");
        loge("mUsableBytes : " + mUsableBytes + ", mUsableFileNode : " + mUsableFileNode);
        getContext().removeStickyBroadcastAsUser(putExtra, UserHandle.ALL);
        getContext().sendBroadcastAsUser(putExtra2, UserHandle.ALL);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x017e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateBroadcasts(android.os.storage.VolumeInfo r17, int r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 890
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.storage.DeviceStorageMonitorService.updateBroadcasts(android.os.storage.VolumeInfo, int, int, int):void");
    }

    public final void updateNotifications_filenode(VolumeInfo volumeInfo, int i, int i2) {
        Context context = getContext();
        UUID convert = StorageManager.convert(volumeInfo.getFsUuid());
        if (FileNodeState.isEntering(1, i, i2)) {
            CharSequence text = context.getText(R.string.policydesc_wipeData);
            CharSequence text2 = context.getText(R.string.policydesc_watchLogin_secondaryUser);
            Notification build = new Notification.Builder(context, SystemNotificationChannels.ALERTS).setSmallIcon(17304206).setTicker(text).setColor(context.getColor(R.color.system_notification_accent_color)).setContentTitle(text).setContentText(text2).setStyle(new Notification.BigTextStyle().bigText(text2)).setVisibility(1).setCategory("sys").build();
            build.flags |= 32;
            loge("updateNotifications_filenode(" + volumeInfo.path + ") notifyAsUser");
            this.mNotifManager.notifyAsUser(convert.toString(), 104, build, UserHandle.ALL);
            return;
        }
        if (FileNodeState.isLeaving(1, i, i2)) {
            loge("updateNotifications_filenode(" + volumeInfo.path + ") cancelAsUser");
            this.mNotifManager.cancelAsUser(convert.toString(), 104, UserHandle.ALL);
        }
    }

    public final void updateBroadcasts_filenode(VolumeInfo volumeInfo, int i, int i2, int i3) {
        Slog.w("DeviceStorageMonitorService", "updateBroadcasts_filenode(" + volumeInfo.path + ") fn_oldLevel:" + i + ", fn_newLevel:" + i2 + ", seq:" + i3);
        if (Objects.equals(StorageManager.UUID_PRIVATE_INTERNAL, volumeInfo.getFsUuid())) {
            new StatFs(volumeInfo.path);
            Intent putExtra = new Intent("com.samsung.intent.action.DEVICE_FILENODE_FULL").addFlags(85983232).putExtra("seq", i3);
            Intent putExtra2 = new Intent("com.samsung.intent.action.DEVICE_FILENODE_NOT_FULL ").addFlags(85983232).putExtra("seq", i3);
            if (FileNodeState.isEntering(1, i, i2)) {
                loge("updateBroadcasts_filenode(" + volumeInfo.path + ") sending intent : ACTION_DEVICE_FILENODE_FULL");
                loge("mUsableBytes : " + mUsableBytes + ", mUsableFileNode : " + mUsableFileNode);
                getContext().sendStickyBroadcastAsUser(putExtra, UserHandle.ALL);
                return;
            }
            if (FileNodeState.isLeaving(1, i, i2)) {
                loge("updateBroadcasts_filenode(" + volumeInfo.path + ") sending intent : ACTION_DEVICE_FILENODE_NOT_FULL");
                loge("mUsableBytes : " + mUsableBytes + ", mUsableFileNode : " + mUsableFileNode);
                getContext().removeStickyBroadcastAsUser(putExtra, UserHandle.ALL);
                getContext().sendBroadcastAsUser(putExtra2, UserHandle.ALL);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class CacheFileDeletedObserver extends FileObserver {
        public CacheFileDeletedObserver() {
            super(Environment.getDownloadCacheDirectory().getAbsolutePath(), 512);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            EventLogTags.writeCacheFileDeleted(str);
        }
    }
}
