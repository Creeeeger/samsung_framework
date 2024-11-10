package com.android.server.usb;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.hardware.usb.IDisplayPortAltModeInfoListener;
import android.hardware.usb.IUsbManager;
import android.hardware.usb.IUsbOperationInternal;
import android.hardware.usb.ParcelableUsbPort;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.hardware.usb.UsbPort;
import android.hardware.usb.UsbPortStatus;
import android.os.Binder;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.sysfwutil.DexObserver;
import android.util.sysfwutil.Slog;
import com.android.internal.util.Preconditions;
import com.android.server.FgThread;
import com.android.server.SystemServerInitThreadPool;
import com.android.server.SystemService;
import com.android.server.pm.PersonaServiceHelper;
import com.android.server.usb.UsbService;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;

/* loaded from: classes3.dex */
public class UsbService extends IUsbManager.Stub {
    public static final boolean RELEASE_BUILD = "user".equals(SystemProperties.get("ro.build.type"));
    public final UsbAlsaManager mAlsaManager;
    public final Context mContext;
    public int mCurrentUserId;
    public UsbDeviceManager mDeviceManager;
    public DexObserver mDexObserver;
    public UsbHostManager mHostManager;
    public UsbHostRestrictor mHostRestrictor;
    public final Object mLock = new Object();
    public final UsbPermissionManager mPermissionManager;
    public UsbPortManager mPortManager;
    public final UsbSettingsManager mSettingsManager;
    public UsbMonitorImpl mUsbMonitorImpl;
    public UsbUI mUsbUI;
    public final UserManager mUserManager;

    /* loaded from: classes3.dex */
    public class Lifecycle extends SystemService {
        public final CompletableFuture mOnActivityManagerPhaseFinished;
        public final CompletableFuture mOnStartFinished;
        public UsbService mUsbService;

        public Lifecycle(Context context) {
            super(context);
            this.mOnStartFinished = new CompletableFuture();
            this.mOnActivityManagerPhaseFinished = new CompletableFuture();
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.usb.UsbService$Lifecycle$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    UsbService.Lifecycle.this.lambda$onStart$0();
                }
            }, "UsbService$Lifecycle#onStart");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.server.usb.UsbService, android.os.IBinder] */
        public /* synthetic */ void lambda$onStart$0() {
            ?? usbService = new UsbService(getContext());
            this.mUsbService = usbService;
            publishBinderService("usb", usbService);
            this.mOnStartFinished.complete(null);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int i) {
            if (i == 550) {
                Slog.d("UsbService", "UsbService -> SystemService.PHASE_ACTIVITY_MANAGER_READY");
                SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.usb.UsbService$Lifecycle$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        UsbService.Lifecycle.this.lambda$onBootPhase$1();
                    }
                }, "UsbService$Lifecycle#onBootPhase");
            } else if (i == 1000) {
                Slog.d("UsbService", "UsbService -> SystemService.PHASE_BOOT_COMPLETED");
                this.mOnActivityManagerPhaseFinished.join();
                this.mUsbService.bootCompleted();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBootPhase$1() {
            this.mOnStartFinished.join();
            this.mUsbService.systemReady();
            this.mOnActivityManagerPhaseFinished.complete(null);
        }

        @Override // com.android.server.SystemService
        public void onUserSwitching(SystemService.TargetUser targetUser, final SystemService.TargetUser targetUser2) {
            FgThread.getHandler().postAtFrontOfQueue(new Runnable() { // from class: com.android.server.usb.UsbService$Lifecycle$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    UsbService.Lifecycle.this.lambda$onUserSwitching$2(targetUser2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onUserSwitching$2(SystemService.TargetUser targetUser) {
            this.mUsbService.onSwitchUser(targetUser.getUserIdentifier());
        }

        @Override // com.android.server.SystemService
        public void onUserStopping(SystemService.TargetUser targetUser) {
            this.mUsbService.onStopUser(targetUser.getUserHandle());
        }

        @Override // com.android.server.SystemService
        public void onUserUnlocking(SystemService.TargetUser targetUser) {
            this.mUsbService.onUnlockUser(targetUser.getUserIdentifier());
        }
    }

    public UsbUserSettingsManager getSettingsForUser(int i) {
        return this.mSettingsManager.getSettingsForUser(i);
    }

    public UsbUserPermissionManager getPermissionsForUser(int i) {
        return this.mPermissionManager.getPermissionsForUser(i);
    }

    public UsbService(Context context) {
        HandlerThread handlerThread = new HandlerThread("UsbHostNotification");
        handlerThread.start();
        this.mUsbUI = new UsbUI(context, handlerThread.getLooper());
        this.mContext = context;
        this.mUserManager = (UserManager) context.getSystemService(UserManager.class);
        UsbSettingsManager usbSettingsManager = new UsbSettingsManager(context, this);
        this.mSettingsManager = usbSettingsManager;
        UsbPermissionManager usbPermissionManager = new UsbPermissionManager(context, this);
        this.mPermissionManager = usbPermissionManager;
        UsbAlsaManager usbAlsaManager = new UsbAlsaManager(context);
        this.mAlsaManager = usbAlsaManager;
        PackageManager packageManager = context.getPackageManager();
        if (TextUtils.equals("sep_basic", "sep_basic")) {
            this.mDexObserver = new DexObserver();
        }
        if (packageManager.hasSystemFeature("android.hardware.usb.host")) {
            this.mHostManager = new UsbHostManager(context, usbAlsaManager, usbPermissionManager);
        }
        if (new File("/sys/class/android_usb").exists()) {
            this.mDeviceManager = new UsbDeviceManager(context, usbAlsaManager, usbSettingsManager, usbPermissionManager, this.mDexObserver);
        }
        if (this.mHostManager != null || this.mDeviceManager != null) {
            this.mPortManager = new UsbPortManager(context);
        }
        if (this.mDeviceManager != null) {
            Slog.d("UsbService", "At UsbService, UsbDeviceManager -> UsbHostRestrictor");
            this.mHostRestrictor = new UsbHostRestrictor(context, this.mDeviceManager);
            Slog.d("UsbService", "At UsbService, UsbDeviceManager -> UsbMonitorImpl");
            this.mUsbMonitorImpl = new UsbMonitorImpl(handlerThread.getLooper());
        }
        onSwitchUser(0);
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.usb.UsbService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (!"android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED".equals(intent.getAction()) || UsbService.this.mDeviceManager == null) {
                    return;
                }
                UsbService.this.mDeviceManager.updateUserRestrictions();
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
        context.registerReceiverAsUser(broadcastReceiver, UserHandle.ALL, intentFilter, null, null);
    }

    public final void onSwitchUser(int i) {
        synchronized (this.mLock) {
            this.mCurrentUserId = i;
            UsbProfileGroupSettingsManager settingsForProfileGroup = this.mSettingsManager.getSettingsForProfileGroup(UserHandle.of(i));
            UsbHostManager usbHostManager = this.mHostManager;
            if (usbHostManager != null) {
                usbHostManager.setCurrentUserSettings(settingsForProfileGroup);
            }
            UsbDeviceManager usbDeviceManager = this.mDeviceManager;
            if (usbDeviceManager != null) {
                usbDeviceManager.setCurrentUser(i, settingsForProfileGroup);
            }
        }
    }

    public final void onStopUser(UserHandle userHandle) {
        this.mSettingsManager.remove(userHandle);
    }

    public void systemReady() {
        UsbUI usbUI = this.mUsbUI;
        if (usbUI != null) {
            usbUI.systemReady();
        }
        this.mAlsaManager.systemReady();
        UsbDeviceManager usbDeviceManager = this.mDeviceManager;
        if (usbDeviceManager != null) {
            usbDeviceManager.systemReady();
        }
        UsbHostManager usbHostManager = this.mHostManager;
        if (usbHostManager != null) {
            usbHostManager.systemReady();
        }
        UsbPortManager usbPortManager = this.mPortManager;
        if (usbPortManager != null) {
            usbPortManager.systemReady();
        }
        UsbMonitorImpl usbMonitorImpl = this.mUsbMonitorImpl;
        if (usbMonitorImpl != null) {
            usbMonitorImpl.systemReady();
        }
        UsbHostRestrictor usbHostRestrictor = this.mHostRestrictor;
        if (usbHostRestrictor != null) {
            usbHostRestrictor.systemReady();
        }
    }

    public void bootCompleted() {
        UsbUI usbUI = this.mUsbUI;
        if (usbUI != null) {
            usbUI.bootCompleted();
        }
        UsbHostManager usbHostManager = this.mHostManager;
        if (usbHostManager != null) {
            usbHostManager.bootCompleted();
        }
        UsbDeviceManager usbDeviceManager = this.mDeviceManager;
        if (usbDeviceManager != null) {
            usbDeviceManager.bootCompleted();
        }
        UsbHostRestrictor usbHostRestrictor = this.mHostRestrictor;
        if (usbHostRestrictor != null) {
            usbHostRestrictor.bootCompleted();
        }
    }

    public void onUnlockUser(int i) {
        UsbHostManager usbHostManager = this.mHostManager;
        if (usbHostManager != null) {
            usbHostManager.onUnlockUser(i);
        }
        UsbDeviceManager usbDeviceManager = this.mDeviceManager;
        if (usbDeviceManager != null) {
            usbDeviceManager.onUnlockUser(i);
        }
    }

    public void getDeviceList(Bundle bundle) {
        UsbHostManager usbHostManager;
        if (PersonaServiceHelper.shouldBlockUsbHostMode(this.mContext) || (usbHostManager = this.mHostManager) == null) {
            return;
        }
        usbHostManager.getDeviceList(bundle);
    }

    public ParcelFileDescriptor openDevice(String str, String str2) {
        ParcelFileDescriptor parcelFileDescriptor = null;
        if (PersonaServiceHelper.shouldBlockUsbHostMode(this.mContext)) {
            return null;
        }
        if (this.mHostManager != null && str != null) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            int userId = UserHandle.getUserId(callingUid);
            long clearCallingIdentity = IUsbManager.Stub.clearCallingIdentity();
            try {
                synchronized (this.mLock) {
                    if (this.mUserManager.isSameProfileGroup(userId, this.mCurrentUserId)) {
                        parcelFileDescriptor = this.mHostManager.openDevice(str, getPermissionsForUser(userId), str2, callingPid, callingUid);
                    } else {
                        Slog.w("UsbService", "Cannot open " + str + " for user " + userId + " as user is not active.");
                    }
                }
            } finally {
                IUsbManager.Stub.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return parcelFileDescriptor;
    }

    public UsbAccessory getCurrentAccessory() {
        UsbDeviceManager usbDeviceManager;
        if (PersonaServiceHelper.shouldBlockUsbHostMode(this.mContext) || (usbDeviceManager = this.mDeviceManager) == null) {
            return null;
        }
        return usbDeviceManager.getCurrentAccessory();
    }

    public ParcelFileDescriptor openAccessory(UsbAccessory usbAccessory) {
        if (!PersonaServiceHelper.shouldBlockUsbHostMode(this.mContext) && this.mDeviceManager != null) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            int userId = UserHandle.getUserId(callingUid);
            long clearCallingIdentity = IUsbManager.Stub.clearCallingIdentity();
            try {
                synchronized (this.mLock) {
                    if (this.mUserManager.isSameProfileGroup(userId, this.mCurrentUserId)) {
                        return this.mDeviceManager.openAccessory(usbAccessory, getPermissionsForUser(userId), callingPid, callingUid);
                    }
                    Slog.w("UsbService", "Cannot open " + usbAccessory + " for user " + userId + " as user is not active.");
                }
            } finally {
                IUsbManager.Stub.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return null;
    }

    public ParcelFileDescriptor getControlFd(long j) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_MTP", null);
        return this.mDeviceManager.getControlFd(j);
    }

    public void setDevicePackage(UsbDevice usbDevice, String str, int i) {
        Objects.requireNonNull(usbDevice);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle of = UserHandle.of(i);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(of).setDevicePackage(usbDevice, str, of);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setAccessoryPackage(UsbAccessory usbAccessory, String str, int i) {
        Objects.requireNonNull(usbAccessory);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle of = UserHandle.of(i);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(of).setAccessoryPackage(usbAccessory, str, of);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void addDevicePackagesToPreferenceDenied(UsbDevice usbDevice, String[] strArr, UserHandle userHandle) {
        Objects.requireNonNull(usbDevice);
        String[] strArr2 = (String[]) Preconditions.checkArrayElementsNotNull(strArr, "packageNames");
        Objects.requireNonNull(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(userHandle).addDevicePackagesToDenied(usbDevice, strArr2, userHandle);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void addAccessoryPackagesToPreferenceDenied(UsbAccessory usbAccessory, String[] strArr, UserHandle userHandle) {
        Objects.requireNonNull(usbAccessory);
        String[] strArr2 = (String[]) Preconditions.checkArrayElementsNotNull(strArr, "packageNames");
        Objects.requireNonNull(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(userHandle).addAccessoryPackagesToDenied(usbAccessory, strArr2, userHandle);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void removeDevicePackagesFromPreferenceDenied(UsbDevice usbDevice, String[] strArr, UserHandle userHandle) {
        Objects.requireNonNull(usbDevice);
        String[] strArr2 = (String[]) Preconditions.checkArrayElementsNotNull(strArr, "packageNames");
        Objects.requireNonNull(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(userHandle).removeDevicePackagesFromDenied(usbDevice, strArr2, userHandle);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void removeAccessoryPackagesFromPreferenceDenied(UsbAccessory usbAccessory, String[] strArr, UserHandle userHandle) {
        Objects.requireNonNull(usbAccessory);
        String[] strArr2 = (String[]) Preconditions.checkArrayElementsNotNull(strArr, "packageNames");
        Objects.requireNonNull(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(userHandle).removeAccessoryPackagesFromDenied(usbAccessory, strArr2, userHandle);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setDevicePersistentPermission(UsbDevice usbDevice, int i, UserHandle userHandle, boolean z) {
        Objects.requireNonNull(usbDevice);
        Objects.requireNonNull(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mPermissionManager.getPermissionsForUser(userHandle).setDevicePersistentPermission(usbDevice, i, z);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setAccessoryPersistentPermission(UsbAccessory usbAccessory, int i, UserHandle userHandle, boolean z) {
        Objects.requireNonNull(usbAccessory);
        Objects.requireNonNull(userHandle);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mPermissionManager.getPermissionsForUser(userHandle).setAccessoryPersistentPermission(usbAccessory, i, z);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean hasDevicePermission(UsbDevice usbDevice, String str) {
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int userId = UserHandle.getUserId(callingUid);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getPermissionsForUser(userId).hasPermission(usbDevice, str, callingPid, callingUid);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean hasDevicePermissionWithIdentity(UsbDevice usbDevice, String str, int i, int i2) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        return getPermissionsForUser(UserHandle.getUserId(i2)).hasPermission(usbDevice, str, i, i2);
    }

    public boolean hasAccessoryPermission(UsbAccessory usbAccessory) {
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int userId = UserHandle.getUserId(callingUid);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getPermissionsForUser(userId).hasPermission(usbAccessory, callingPid, callingUid);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean hasAccessoryPermissionWithIdentity(UsbAccessory usbAccessory, int i, int i2) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        return getPermissionsForUser(UserHandle.getUserId(i2)).hasPermission(usbAccessory, i, i2);
    }

    public void requestDevicePermission(UsbDevice usbDevice, String str, PendingIntent pendingIntent) {
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int userId = UserHandle.getUserId(callingUid);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).requestPermission(usbDevice, str, pendingIntent, callingPid, callingUid);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void requestAccessoryPermission(UsbAccessory usbAccessory, String str, PendingIntent pendingIntent) {
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int userId = UserHandle.getUserId(callingUid);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).requestPermission(usbAccessory, str, pendingIntent, callingPid, callingUid);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void grantDevicePermission(UsbDevice usbDevice, int i) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        int userId = UserHandle.getUserId(i);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).grantDevicePermission(usbDevice, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void grantAccessoryPermission(UsbAccessory usbAccessory, int i) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        int userId = UserHandle.getUserId(i);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            getPermissionsForUser(userId).grantAccessoryPermission(usbAccessory, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean hasDefaults(String str, int i) {
        String str2 = (String) Preconditions.checkStringNotEmpty(str);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle of = UserHandle.of(i);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mSettingsManager.getSettingsForProfileGroup(of).hasDefaults(str2, of);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void clearDefaults(String str, int i) {
        String str2 = (String) Preconditions.checkStringNotEmpty(str);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        UserHandle of = UserHandle.of(i);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mSettingsManager.getSettingsForProfileGroup(of).clearDefaults(str2, of);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setCurrentFunctions(long j, int i) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        if (PersonaServiceHelper.shouldBlockUsbHostMode(this.mContext)) {
            return;
        }
        Preconditions.checkArgument(UsbManager.areSettableFunctions(j));
        Preconditions.checkState(this.mDeviceManager != null);
        this.mDeviceManager.rmSetNextUsbModeToDefault();
        this.mDeviceManager.setCurrentFunctions(j, i);
    }

    public void setCurrentFunction(String str, boolean z, int i) {
        setCurrentFunctions(UsbManager.usbFunctionsFromString(str), i);
    }

    public boolean isFunctionEnabled(String str) {
        return (UsbManager.usbFunctionsFromString(str) & getCurrentFunctions()) != 0;
    }

    public long getCurrentFunctions() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        if (PersonaServiceHelper.shouldBlockUsbHostMode(this.mContext)) {
            return 0L;
        }
        Preconditions.checkState(this.mDeviceManager != null);
        return this.mDeviceManager.getCurrentFunctions();
    }

    public void setScreenUnlockedFunctions(long j) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkArgument(UsbManager.areSettableFunctions(j));
        Preconditions.checkState(this.mDeviceManager != null);
        this.mDeviceManager.setScreenUnlockedFunctions(j);
    }

    public long getScreenUnlockedFunctions() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkState(this.mDeviceManager != null);
        return this.mDeviceManager.getScreenUnlockedFunctions();
    }

    public int getCurrentUsbSpeed() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkNotNull(this.mDeviceManager, "DeviceManager must not be null");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mDeviceManager.getCurrentUsbSpeed();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public int getGadgetHalVersion() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkNotNull(this.mDeviceManager, "DeviceManager must not be null");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mDeviceManager.getGadgetHalVersion();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void resetUsbGadget() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        Preconditions.checkNotNull(this.mDeviceManager, "DeviceManager must not be null");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mDeviceManager.resetUsbGadget();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void resetUsbPort(String str, int i, IUsbOperationInternal iUsbOperationInternal) {
        Objects.requireNonNull(str, "resetUsbPort: portId must not be null. opId:" + i);
        Objects.requireNonNull(iUsbOperationInternal, "resetUsbPort: callback must not be null. opId:" + i);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                usbPortManager.resetUsbPort(str, i, iUsbOperationInternal, null);
            } else {
                try {
                    iUsbOperationInternal.onOperationComplete(1);
                } catch (RemoteException e) {
                    Slog.e("UsbService", "resetUsbPort: Failed to call onOperationComplete", e);
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public List getPorts() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager == null) {
                return null;
            }
            UsbPort[] ports = usbPortManager.getPorts();
            ArrayList arrayList = new ArrayList();
            for (UsbPort usbPort : ports) {
                arrayList.add(ParcelableUsbPort.of(usbPort));
            }
            return arrayList;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public UsbPortStatus getPortStatus(String str) {
        Objects.requireNonNull(str, "portId must not be null");
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            return usbPortManager != null ? usbPortManager.getPortStatus(str) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setPortRoles(String str, int i, int i2) {
        Objects.requireNonNull(str, "portId must not be null");
        UsbPort.checkRoles(i, i2);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                usbPortManager.setPortRoles(str, i, i2, null, new Runnable() { // from class: com.android.server.usb.UsbService.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (UsbService.this.mDeviceManager != null) {
                            UsbService.this.mDeviceManager.setNextUsbModeToDefault();
                        }
                    }
                });
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void enableLimitPowerTransfer(String str, boolean z, int i, IUsbOperationInternal iUsbOperationInternal) {
        Objects.requireNonNull(str, "portId must not be null. opID:" + i);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                usbPortManager.enableLimitPowerTransfer(str, z, i, iUsbOperationInternal, null);
            } else {
                try {
                    iUsbOperationInternal.onOperationComplete(1);
                } catch (RemoteException e) {
                    Slog.e("UsbService", "enableLimitPowerTransfer: Failed to call onOperationComplete", e);
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void enableContaminantDetection(String str, boolean z) {
        Objects.requireNonNull(str, "portId must not be null");
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                usbPortManager.enableContaminantDetection(str, z, null);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public int getUsbHalVersion() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                return usbPortManager.getUsbHalVersion();
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return -1;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean enableUsbData(String str, boolean z, int i, IUsbOperationInternal iUsbOperationInternal) {
        boolean z2;
        Objects.requireNonNull(str, "enableUsbData: portId must not be null. opId:" + i);
        Objects.requireNonNull(iUsbOperationInternal, "enableUsbData: callback must not be null. opId:" + i);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                z2 = usbPortManager.enableUsbData(str, z, i, iUsbOperationInternal, null);
            } else {
                try {
                    iUsbOperationInternal.onOperationComplete(1);
                } catch (RemoteException e) {
                    Slog.e("UsbService", "enableUsbData: Failed to call onOperationComplete", e);
                }
                z2 = false;
            }
            return z2;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void enableUsbDataWhileDocked(String str, int i, IUsbOperationInternal iUsbOperationInternal) {
        Objects.requireNonNull(str, "enableUsbDataWhileDocked: portId must not be null. opId:" + i);
        Objects.requireNonNull(iUsbOperationInternal, "enableUsbDataWhileDocked: callback must not be null. opId:" + i);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                usbPortManager.enableUsbDataWhileDocked(str, i, iUsbOperationInternal, null);
            } else {
                try {
                    iUsbOperationInternal.onOperationComplete(1);
                } catch (RemoteException e) {
                    Slog.e("UsbService", "enableUsbData: Failed to call onOperationComplete", e);
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setUsbDeviceConnectionHandler(ComponentName componentName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        synchronized (this.mLock) {
            if (this.mCurrentUserId == UserHandle.getCallingUserId()) {
                UsbHostManager usbHostManager = this.mHostManager;
                if (usbHostManager != null) {
                    usbHostManager.setUsbDeviceConnectionHandler(componentName);
                }
            } else {
                throw new IllegalArgumentException("Only the current user can register a usb connection handler");
            }
        }
    }

    public boolean registerForDisplayPortEvents(IDisplayPortAltModeInfoListener iDisplayPortAltModeInfoListener) {
        Objects.requireNonNull(iDisplayPortAltModeInfoListener, "registerForDisplayPortEvents: listener must not be null.");
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                return usbPortManager.registerForDisplayPortEvents(iDisplayPortAltModeInfoListener);
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return false;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void unregisterForDisplayPortEvents(IDisplayPortAltModeInfoListener iDisplayPortAltModeInfoListener) {
        Objects.requireNonNull(iDisplayPortAltModeInfoListener, "unregisterForDisplayPortEvents: listener must not be null.");
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UsbPortManager usbPortManager = this.mPortManager;
            if (usbPortManager != null) {
                usbPortManager.unregisterForDisplayPortEvents(iDisplayPortAltModeInfoListener);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x028d A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02e2 A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0337 A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0304 A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02e9 A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02ad A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0294 A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011b A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e7 A[Catch: all -> 0x0726, TryCatch #0 {all -> 0x0726, blocks: (B:7:0x0022, B:9:0x0032, B:11:0x0035, B:15:0x0044, B:18:0x0063, B:20:0x0066, B:31:0x009e, B:36:0x00bc, B:47:0x00f7, B:51:0x0117, B:53:0x011b, B:58:0x00d2, B:61:0x00dd, B:64:0x00e7, B:69:0x007b, B:72:0x0083, B:75:0x008e, B:78:0x0138, B:81:0x0149, B:83:0x014d, B:84:0x0156, B:93:0x018b, B:98:0x01af, B:100:0x01b2, B:108:0x01dd, B:110:0x01f7, B:115:0x01c3, B:118:0x01cd, B:122:0x01fa, B:124:0x01fe, B:128:0x015a, B:131:0x0165, B:134:0x016f, B:137:0x0177, B:140:0x0219, B:142:0x0225, B:144:0x0228, B:146:0x0234, B:147:0x023d, B:156:0x0265, B:160:0x0285, B:162:0x028d, B:163:0x0296, B:172:0x02bc, B:176:0x02da, B:178:0x02e2, B:179:0x02eb, B:188:0x0313, B:192:0x0333, B:194:0x0337, B:196:0x02fa, B:199:0x0304, B:202:0x02e9, B:204:0x02a5, B:207:0x02ad, B:210:0x0294, B:212:0x024e, B:215:0x0256, B:218:0x023b, B:219:0x0358, B:221:0x0367, B:223:0x036b, B:225:0x0372, B:226:0x0389, B:228:0x0395, B:230:0x0399, B:232:0x03a0, B:233:0x03b7, B:235:0x03c3, B:237:0x03c7, B:239:0x03cb, B:240:0x03e2, B:242:0x03ee, B:244:0x03f2, B:246:0x0404, B:247:0x041f, B:249:0x042b, B:251:0x042f, B:253:0x0439, B:254:0x0450, B:256:0x045b, B:258:0x045f, B:260:0x0466, B:261:0x047d, B:263:0x0489, B:265:0x048d, B:267:0x04b6, B:268:0x04d0, B:270:0x04dc, B:272:0x04e0, B:274:0x04e7, B:275:0x0505, B:277:0x0512, B:279:0x0516, B:281:0x051a, B:282:0x0529, B:284:0x0534, B:285:0x053b, B:288:0x0696, B:289:0x06b0, B:291:0x06b4, B:292:0x06be, B:294:0x06c2, B:295:0x06cc, B:297:0x06d0, B:298:0x06db, B:300:0x06e9, B:302:0x06ed, B:303:0x06f0, B:305:0x06f4, B:306:0x06f7, B:308:0x06fb, B:309:0x06fe, B:311:0x0702, B:312:0x0705, B:313:0x06a1), top: B:6:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ba  */
    @dalvik.annotation.optimization.NeverCompile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dump(java.io.FileDescriptor r23, java.io.PrintWriter r24, java.lang.String[] r25) {
        /*
            Method dump skipped, instructions count: 1854
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.usb.UsbService.dump(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    public static String removeLastChar(String str) {
        return str.substring(0, str.length() - 1);
    }

    public boolean isUsbBlocked() {
        if (PersonaServiceHelper.shouldBlockUsbHostMode(this.mContext)) {
            return true;
        }
        if (this.mHostRestrictor != null) {
            return UsbHostRestrictor.isUsbBlocked();
        }
        return false;
    }

    public boolean isSupportDexRestrict() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        if (this.mHostRestrictor != null) {
            return UsbHostRestrictor.isSupportDexRestrict();
        }
        return false;
    }

    public int restrictUsbHostInterface(boolean z, String str) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("no permission to call restrictUsbHostInterface()");
        }
        if (this.mHostRestrictor == null) {
            return -1;
        }
        Slog.d("UsbService", "restrictUsbHostInterface: enable=" + z);
        return UsbHostRestrictor.restrictUsbHostInterface(z, str);
    }

    public void setUsbHiddenMenuState(boolean z) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_USB", null);
        if (this.mDeviceManager != null) {
            Slog.d("UsbService", "setUsbHiddenMenuState: enable=" + z);
            this.mDeviceManager.setUsbHiddenMenuState(z);
            return;
        }
        Slog.e("UsbService", "UsbService mDeviceManager is NULL");
    }

    public void semSetDevicePackage(UsbDevice usbDevice, String str, int i) {
        setDevicePackage(usbDevice, str, i);
    }

    public void semGrantDevicePermission(UsbDevice usbDevice, int i) {
        grantDevicePermission(usbDevice, i);
    }

    public final boolean isAllowedPackage() {
        int callingUid = Binder.getCallingUid();
        PackageManager packageManager = this.mContext.getPackageManager();
        Slog.d("UsbService", "isAllowedPackage: " + packageManager.getNameForUid(callingUid));
        boolean z = packageManager.checkSignatures("android", packageManager.getNameForUid(callingUid)) == 0;
        Slog.w("UsbService", " ret " + z);
        if (!RELEASE_BUILD) {
            Slog.w("UsbService", "Skip signature verification, ret" + z);
            z = true;
        }
        boolean z2 = callingUid != 1000 ? z : true;
        Slog.d("UsbService", "isAllowedPackage, ret " + z2);
        return z2;
    }

    public void semSetMode(int i) {
        Slog.d("UsbService", "semSetMode++, not imlpemtentd yet mode " + i);
        if (this.mPortManager == null || this.mDeviceManager == null) {
            Slog.d("UsbService", "semSetMode--, managers are null");
            return;
        }
        if (!isAllowedPackage()) {
            Slog.d("UsbService", "semSetMode--, no permissions");
            return;
        }
        SemUsbBackend semUsbBackend = new SemUsbBackend(this.mContext, this.mPortManager, this.mDeviceManager);
        Slog.d("UsbService", "semSetMode: backend " + semUsbBackend);
        semUsbBackend.updateUsbPort();
        Slog.d("UsbService", "semSetMode: currentUsbMode " + semUsbBackend.getCurrentMode());
        semUsbBackend.setMode(i);
        Slog.d("UsbService", "semSetMode--");
    }

    public int semGetPowerRoleStatus() {
        Slog.d("UsbService", "semGetPowerRoleStatus++");
        UsbPortManager usbPortManager = this.mPortManager;
        if (usbPortManager == null) {
            Slog.d("UsbService", "semGetPowerRoleStatus--, manager is null");
            return -1;
        }
        int semGetPowerRoleStatus = usbPortManager.semGetPowerRoleStatus();
        Slog.d("UsbService", "semGetPowerRoleStatus ret=" + semGetPowerRoleStatus);
        return semGetPowerRoleStatus;
    }

    public int semGetDataRoleStatus() {
        Slog.d("UsbService", "semGetDataRoleStatus++");
        UsbPortManager usbPortManager = this.mPortManager;
        if (usbPortManager == null) {
            Slog.d("UsbService", "semGetDataRoleStatus--, manager is null");
            return -1;
        }
        int semGetDataRoleStatus = usbPortManager.semGetDataRoleStatus();
        Slog.d("UsbService", "semGetDataRoleStatus ret=" + semGetDataRoleStatus);
        return semGetDataRoleStatus;
    }
}
