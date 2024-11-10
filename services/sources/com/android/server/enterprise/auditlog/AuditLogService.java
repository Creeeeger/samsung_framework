package com.android.server.enterprise.auditlog;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import android.text.TextUtils;
import android.util.Log;
import com.android.server.enterprise.EnterpriseServiceCallback;
import com.android.server.enterprise.adapter.AdapterRegistry;
import com.android.server.enterprise.adapter.IPersonaManagerAdapter;
import com.android.server.enterprise.common.EnterprisePermissionChecker;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.android.server.enterprise.utils.Utils;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.analytics.activation.DevicePolicyListener;
import com.samsung.android.knox.deviceinfo.DeviceInventory;
import com.samsung.android.knox.log.AuditLogRulesInfo;
import com.samsung.android.knox.log.IAuditLog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class AuditLogService extends IAuditLog.Stub implements EnterpriseServiceCallback {
    public static final String[] swComponentWhitelist = {"KeyStore", "keystore", "AndroidKeyStoreKeyPairGeneratorSpi", "AndroidKeyStoreSpi", "OkHostnameVerifier", "OpenSSLRandom", "PKIXRevocationChecker", "ConscryptFileDescriptorSocket", "Connection", "CertPathValidator", "ecryptfs", "conscrypt", "fscrypt", "AndroidKeyStoreMaintenance", "KeyStoreSecurityLevel", "KeyStore2"};
    public BroadcastReceiver mBroadcastReceiver;
    public ContentValues mContainerOwnerCache;
    public final Context mContext;
    public EnterpriseDeviceManager mEDM;
    public final EdmStorageProvider mEdmStorageProvider;
    public final Injector mInjector;
    public volatile boolean mIsBootCompleted;
    public Map mLinkedHashMap;
    public final String mMessagePackage;
    public final Pattern mPattern;
    public BroadcastReceiver mRemovableMediaBroadcastReceiver;

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void notifyToAddSystemService(String str, IBinder iBinder) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminAdded(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void systemReady() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class Injector {
        public final Context mContext;

        public boolean isNeedToRunCreateAdmins() {
            return true;
        }

        public Injector(Context context) {
            this.mContext = context;
        }

        public List storageManagerGetVolumes() {
            return ((StorageManager) this.mContext.getSystemService("storage")).getVolumes();
        }
    }

    public AuditLogService(Context context) {
        this(new Injector(context));
    }

    public AuditLogService(Injector injector) {
        this.mRemovableMediaBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.enterprise.auditlog.AuditLogService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals("android.intent.action.MEDIA_MOUNTED")) {
                    logRemovableMediaEvents(context, intent, "Mounted");
                } else if (intent.getAction().equals("android.intent.action.MEDIA_UNMOUNTED")) {
                    logRemovableMediaEvents(context, intent, "Unmounted");
                }
            }

            public final void logRemovableMediaEvents(Context context, Intent intent, String str) {
                StorageVolume storageVolume;
                Bundle extras = intent.getExtras();
                if (extras == null || (storageVolume = (StorageVolume) extras.getParcelable("android.os.storage.extra.STORAGE_VOLUME")) == null || storageVolume.getUuid() == null) {
                    return;
                }
                for (VolumeInfo volumeInfo : AuditLogService.this.mInjector.storageManagerGetVolumes()) {
                    if (volumeInfo.getDisk() != null && volumeInfo.getFsUuid() != null && volumeInfo.getFsUuid().equals(storageVolume.getUuid())) {
                        if (volumeInfo.getDisk().isSd()) {
                            AuditLogService.this.AuditLogger(null, 5, 2, true, Process.myPid(), "AuditLogService", String.format("Removable Media Event: External SD Card %s", str));
                        }
                        if (volumeInfo.getDisk().isUsb()) {
                            AuditLogService.this.AuditLogger(null, 5, 2, true, Process.myPid(), "AuditLogService", String.format("Removable Media Event: USB HOST MEMORY %s", str));
                        }
                    }
                }
            }
        };
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.enterprise.auditlog.AuditLogService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int identifier;
                if (intent.getAction().equals("android.intent.action.ACTION_SHUTDOWN") || intent.getAction().equals("android.intent.action.REBOOT")) {
                    synchronized (AuditLogService.this.mLinkedHashMap) {
                        Iterator it = AuditLogService.this.mLinkedHashMap.values().iterator();
                        while (it.hasNext()) {
                            ((Admin) it.next()).shutdown();
                        }
                    }
                    return;
                }
                if (intent.getAction().equals("android.intent.action.LOCKED_BOOT_COMPLETED")) {
                    Log.d("AuditLogService", "ACTION_LOCKED_BOOT_COMPLETED");
                    AuditLogService.this.mIsBootCompleted = true;
                    synchronized (AuditLogService.this.mLinkedHashMap) {
                        Iterator it2 = AuditLogService.this.mLinkedHashMap.values().iterator();
                        while (it2.hasNext()) {
                            ((Admin) it2.next()).setBootCompleted(true);
                        }
                    }
                    return;
                }
                if (intent.getAction().equals("android.intent.action.TIME_SET")) {
                    AuditLogService.this.AuditLogger(null, 5, 2, true, Process.myPid(), "AuditLogService", String.format("The device time has been changed. Current Time = %d", Long.valueOf(System.currentTimeMillis())));
                    return;
                }
                if (intent.getAction().equals(DevicePolicyListener.ACTION_PROFILE_OWNER_ADDED)) {
                    UserHandle userHandle = (UserHandle) intent.getExtra("android.intent.extra.USER");
                    identifier = userHandle != null ? userHandle.getIdentifier() : 0;
                    AuditLogService.this.AuditLogger(null, 5, 2, true, Process.myPid(), "AuditLogService", identifier > 0 ? String.format("Managed Profile has been created successfully - user %d", Integer.valueOf(identifier)) : "Managed Profile has been created successfully");
                } else if (intent.getAction().equals(DevicePolicyListener.ACTION_PROFILE_OWNER_REMOVED)) {
                    UserHandle userHandle2 = (UserHandle) intent.getExtra("android.intent.extra.USER");
                    identifier = userHandle2 != null ? userHandle2.getIdentifier() : 0;
                    if (identifier > 0) {
                        AuditLogService.this.AuditLogger(null, 5, 2, true, Process.myPid(), "AuditLogService", String.format("Managed Profile has been removed - user %d", Integer.valueOf(identifier)));
                    }
                }
            }
        };
        this.mInjector = injector;
        Context context = injector.mContext;
        Objects.requireNonNull(context);
        this.mContext = context;
        this.mEdmStorageProvider = new EdmStorageProvider(context);
        this.mIsBootCompleted = false;
        this.mLinkedHashMap = Collections.synchronizedMap(new HashMap());
        this.mContainerOwnerCache = new ContentValues();
        createAdmins();
        this.mPattern = Pattern.compile("(^Admin) ([0-9]+) (.*$)");
        InformFailure.getInstance().setContext(context);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        intentFilter.addAction("android.intent.action.LOCKED_BOOT_COMPLETED");
        intentFilter.addAction("android.intent.action.REBOOT");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction(DevicePolicyListener.ACTION_PROFILE_OWNER_ADDED);
        intentFilter.addAction(DevicePolicyListener.ACTION_PROFILE_OWNER_REMOVED);
        context.registerReceiver(this.mBroadcastReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter2.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter2.addDataScheme("file");
        context.registerReceiverAsUser(this.mRemovableMediaBroadcastReceiver, UserHandle.SYSTEM, intentFilter2, null, null);
        this.mMessagePackage = Utils.getMessagePackageName(context);
    }

    public final List getDeviceInfo() {
        DeviceInventory deviceInventory = getEDM().getDeviceInventory();
        ArrayList arrayList = new ArrayList();
        arrayList.add(" -----------------------------------------\n");
        arrayList.add("OEM: " + Build.MANUFACTURER);
        arrayList.add("DEVICE: " + Build.MODEL);
        arrayList.add("PLATFORM: " + Build.VERSION.RELEASE);
        arrayList.add("OS: " + deviceInventory.getDeviceOS());
        arrayList.add("OS VERSION: " + deviceInventory.getDeviceOSVersion());
        String radioVersion = Build.getRadioVersion();
        if (radioVersion != null) {
            arrayList.add("BASEBAND: " + radioVersion);
        }
        arrayList.add("DEVICE ID: " + getSerialNumberInternal());
        arrayList.add(" -----------------------------------------\n");
        return arrayList;
    }

    public final void createAdmins() {
        if (this.mInjector.isNeedToRunCreateAdmins()) {
            for (ContentValues contentValues : this.mEdmStorageProvider.getValues("AUDITLOG", (String[]) null, (ContentValues) null)) {
                int intValue = Integer.valueOf(contentValues.getAsString("adminUid")).intValue();
                if (contentValues.get("auditLogEnabled").equals("true")) {
                    Admin admin = new Admin(intValue, this.mContext, getAdminPackageNameForUid(intValue));
                    Integer asInteger = contentValues.getAsInteger("auditCriticalSize");
                    if (asInteger != null) {
                        admin.setCriticalLogSize(asInteger.intValue());
                    }
                    Integer asInteger2 = contentValues.getAsInteger("auditMaximumSize");
                    if (asInteger2 != null) {
                        admin.setMaximumLogSize(asInteger2.intValue());
                    }
                    admin.setMDMLogging(contentValues.get("auditLogMDM").equals("true"));
                    Long asLong = contentValues.getAsLong("auditLogBufferSize");
                    if (asLong != null) {
                        admin.setBufferSize(asLong.longValue());
                    }
                    admin.setAuditLogRulesInfo(extractRulesFromCv(contentValues));
                    synchronized (this.mLinkedHashMap) {
                        this.mLinkedHashMap.put(Integer.valueOf(intValue), admin);
                    }
                    admin.setDeviceInfo(getDeviceInfo());
                }
            }
        }
    }

    public final AuditLogRulesInfo extractRulesFromCv(ContentValues contentValues) {
        ArrayList arrayList;
        AuditLogRulesInfo auditLogRulesInfo = new AuditLogRulesInfo();
        if (contentValues != null) {
            Integer asInteger = contentValues.getAsInteger("auditLogRuleSeverity");
            Integer asInteger2 = contentValues.getAsInteger("auditLogRuleOutcome");
            String asString = contentValues.getAsString("auditLogRuleGroups");
            ArrayList arrayList2 = null;
            if (TextUtils.isEmpty(asString)) {
                arrayList = null;
            } else {
                arrayList = new ArrayList();
                for (String str : asString.split(",")) {
                    arrayList.add(Integer.valueOf(str));
                }
            }
            String asString2 = contentValues.getAsString("auditLogRuleUsers");
            if (!TextUtils.isEmpty(asString2)) {
                arrayList2 = new ArrayList();
                for (String str2 : asString2.split(",")) {
                    arrayList2.add(Integer.valueOf(str2));
                }
            }
            if (asInteger != null) {
                auditLogRulesInfo.setSeverityRule(asInteger.intValue());
            }
            if (asInteger2 != null) {
                auditLogRulesInfo.setOutcomeRule(asInteger2.intValue());
            }
            auditLogRulesInfo.setGroupsRule(arrayList);
            auditLogRulesInfo.setUsersRule(arrayList2);
        }
        return auditLogRulesInfo;
    }

    public boolean isAuditLogEnabled(ContextInfo contextInfo) {
        return isAuditLogEnabledInternal(enforceAuditLogPermission(contextInfo).mCallerUid);
    }

    public boolean isAuditLogEnabledAsUser(int i) {
        Iterator it = this.mLinkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            int userId = UserHandle.getUserId(intValue);
            if (i == -1) {
                return true;
            }
            if (getPersonaManagerAdapter().isValidKnoxId(i)) {
                if (checkOwnContainerOrSelf(i, intValue)) {
                    return true;
                }
            } else if (userId == 0 || userId == i) {
                return true;
            }
        }
        return false;
    }

    public final IPersonaManagerAdapter getPersonaManagerAdapter() {
        return (IPersonaManagerAdapter) AdapterRegistry.getAdapter(IPersonaManagerAdapter.class);
    }

    public final boolean isAuditLogEnabledInternal(int i) {
        return this.mLinkedHashMap.get(Integer.valueOf(i)) != null;
    }

    public boolean isAuditServiceRunning() {
        return !this.mLinkedHashMap.isEmpty();
    }

    public AuditLogRulesInfo getAuditLogRules(ContextInfo contextInfo) {
        int i = enforceAuditLogPermission(contextInfo).mCallerUid;
        Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(i));
        if (admin != null) {
            return admin.getAuditLogRulesInfo();
        }
        return getRulesInfoFromDB(i);
    }

    public boolean setAuditLogRules(ContextInfo contextInfo, AuditLogRulesInfo auditLogRulesInfo) {
        ContextInfo enforceAuditLogPermission = enforceAuditLogPermission(contextInfo);
        int i = enforceAuditLogPermission.mCallerUid;
        if (!validateRulesParameters(auditLogRulesInfo)) {
            return false;
        }
        Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(i));
        ContentValues contentValues = new ContentValues();
        if (admin != null) {
            contentValues.put("auditLogEnabled", String.valueOf(true));
        }
        StringBuilder sb = new StringBuilder();
        if (auditLogRulesInfo.getGroupsRule() != null && !auditLogRulesInfo.getGroupsRule().isEmpty()) {
            Iterator it = auditLogRulesInfo.getGroupsRule().iterator();
            while (it.hasNext()) {
                sb.append(((Integer) it.next()).toString() + ",");
            }
        }
        StringBuilder sb2 = new StringBuilder();
        if (auditLogRulesInfo.getUsersRule() != null && !auditLogRulesInfo.getUsersRule().isEmpty()) {
            Iterator it2 = auditLogRulesInfo.getUsersRule().iterator();
            while (it2.hasNext()) {
                sb2.append(((Integer) it2.next()).toString() + ",");
            }
        }
        contentValues.put("auditLogRuleOutcome", Integer.valueOf(auditLogRulesInfo.getOutcomeRule()));
        contentValues.put("auditLogRuleSeverity", Integer.valueOf(auditLogRulesInfo.getSeverityRule()));
        contentValues.put("auditLogRuleGroups", sb.toString());
        contentValues.put("auditLogRuleUsers", sb2.toString());
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("adminUid", Integer.valueOf(i));
        boolean put = this.mEdmStorageProvider.put("AUDITLOG", contentValues, contentValues2);
        if (!put) {
            InformFailure.getInstance().broadcastFailure("Cannot set filter on Database", admin != null ? admin.getPackageName() : "");
        }
        if (admin != null) {
            admin.setAuditLogRulesInfo(auditLogRulesInfo);
        }
        if (put) {
            AuditLoggerAsUser(enforceAuditLogPermission, 5, 2, true, Process.myPid(), "AuditLogService", "AuditLog filter rules has changed.", UserHandle.getUserId(i));
        }
        return put;
    }

    public final AuditLogRulesInfo getRulesInfoFromDB(int i) {
        AuditLogRulesInfo auditLogRulesInfo = new AuditLogRulesInfo();
        ContentValues contentValues = new ContentValues();
        contentValues.put("adminUid", Integer.valueOf(i));
        List values = this.mEdmStorageProvider.getValues("AUDITLOG", (String[]) null, contentValues);
        return !values.isEmpty() ? extractRulesFromCv((ContentValues) values.get(0)) : auditLogRulesInfo;
    }

    public final void enforceLoggerPermission() {
        if (this.mContext.checkCallingOrSelfPermission("com.samsung.android.knox.permission.KNOX_AUDIT_LOG") != 0) {
            throw new SecurityException("Admin does not have com.samsung.android.knox.permission.KNOX_AUDIT_LOG");
        }
    }

    public final ContextInfo enforceAuditLogPermission(ContextInfo contextInfo) {
        return getEDM().enforceActiveAdminPermissionByContext(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_AUDIT_LOG")));
    }

    public final EnterpriseDeviceManager getEDM() {
        if (this.mEDM == null) {
            this.mEDM = EnterpriseDeviceManager.getInstance(this.mContext);
        }
        return this.mEDM;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean enableAuditLog(com.samsung.android.knox.ContextInfo r12) {
        /*
            r11 = this;
            com.samsung.android.knox.ContextInfo r1 = r11.enforceAuditLogPermission(r12)
            int r12 = r1.mCallerUid
            r0 = 0
            java.util.Map r2 = r11.mLinkedHashMap     // Catch: java.lang.Exception -> L91
            java.lang.Integer r3 = java.lang.Integer.valueOf(r12)     // Catch: java.lang.Exception -> L91
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Exception -> L91
            r3 = 1
            if (r2 == 0) goto L15
            return r3
        L15:
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Exception -> L91
            r2.<init>()     // Catch: java.lang.Exception -> L91
            java.lang.String r4 = "auditLogEnabled"
            java.lang.String r5 = java.lang.String.valueOf(r3)     // Catch: java.lang.Exception -> L91
            r2.put(r4, r5)     // Catch: java.lang.Exception -> L91
            com.android.server.enterprise.storage.EdmStorageProvider r4 = r11.mEdmStorageProvider     // Catch: java.lang.Exception -> L91
            java.lang.String r5 = "AUDITLOG"
            boolean r2 = r4.putValues(r12, r5, r2)     // Catch: java.lang.Exception -> L91
            long r4 = r11.setAvailableSize(r12)     // Catch: java.lang.Exception -> L8c
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 >= 0) goto L36
            goto L37
        L36:
            r0 = r2
        L37:
            if (r0 == 0) goto La0
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Exception -> L91
            r2.<init>()     // Catch: java.lang.Exception -> L91
            java.lang.String r6 = "adminUid"
            java.lang.Integer r7 = java.lang.Integer.valueOf(r12)     // Catch: java.lang.Exception -> L91
            r2.put(r6, r7)     // Catch: java.lang.Exception -> L91
            r11.mIsBootCompleted = r3     // Catch: java.lang.Exception -> L91
            com.android.server.enterprise.auditlog.Admin r2 = new com.android.server.enterprise.auditlog.Admin     // Catch: java.lang.Exception -> L91
            android.content.Context r3 = r11.mContext     // Catch: java.lang.Exception -> L91
            java.lang.String r6 = r11.getAdminPackageNameForUid(r12)     // Catch: java.lang.Exception -> L91
            r2.<init>(r12, r3, r6)     // Catch: java.lang.Exception -> L91
            java.util.List r3 = r11.getDeviceInfo()     // Catch: java.lang.Exception -> L91
            r2.setDeviceInfo(r3)     // Catch: java.lang.Exception -> L91
            boolean r3 = r11.mIsBootCompleted     // Catch: java.lang.Exception -> L91
            r2.setBootCompleted(r3)     // Catch: java.lang.Exception -> L91
            com.samsung.android.knox.log.AuditLogRulesInfo r3 = r11.getRulesInfoFromDB(r12)     // Catch: java.lang.Exception -> L91
            r2.setAuditLogRulesInfo(r3)     // Catch: java.lang.Exception -> L91
            r2.setBufferSize(r4)     // Catch: java.lang.Exception -> L91
            r2.createBubbleDirectory()     // Catch: java.lang.Exception -> L91
            r2.createBubbleFile()     // Catch: java.lang.Exception -> L91
            java.util.Map r3 = r11.mLinkedHashMap     // Catch: java.lang.Exception -> L91
            monitor-enter(r3)     // Catch: java.lang.Exception -> L91
            java.util.Map r4 = r11.mLinkedHashMap     // Catch: java.lang.Throwable -> L89
            java.lang.Integer r5 = java.lang.Integer.valueOf(r12)     // Catch: java.lang.Throwable -> L89
            r4.put(r5, r2)     // Catch: java.lang.Throwable -> L89
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L89
            android.content.Context r2 = r11.mContext     // Catch: java.lang.Exception -> L91
            java.lang.String r3 = "AuditLog/isAuditLogEnabled"
            int r4 = android.os.UserHandle.getUserId(r12)     // Catch: java.lang.Exception -> L91
            com.android.server.enterprise.utils.SecContentProviderUtil.notifyPolicyChangesAsUser(r2, r3, r4)     // Catch: java.lang.Exception -> L91
            goto La0
        L89:
            r2 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L89
            throw r2     // Catch: java.lang.Exception -> L91
        L8c:
            r0 = move-exception
            r10 = r2
            r2 = r0
            r0 = r10
            goto L92
        L91:
            r2 = move-exception
        L92:
            r2.printStackTrace()
            com.android.server.enterprise.auditlog.InformFailure r3 = com.android.server.enterprise.auditlog.InformFailure.getInstance()
            java.lang.String r4 = r11.getAdminPackageNameForUid(r12)
            r3.broadcastFailure(r2, r4)
        La0:
            r9 = r0
            if (r9 == 0) goto Lb6
            r2 = 5
            r3 = 2
            r4 = 1
            int r5 = android.os.Process.myPid()
            java.lang.String r6 = "AuditLogService"
            java.lang.String r7 = "AuditLog status has changed to enable"
            int r8 = android.os.UserHandle.getUserId(r12)
            r0 = r11
            r0.AuditLoggerAsUser(r1, r2, r3, r4, r5, r6, r7, r8)
        Lb6:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.auditlog.AuditLogService.enableAuditLog(com.samsung.android.knox.ContextInfo):boolean");
    }

    public final long setAvailableSize(int i) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long availableBlocks = ((statFs.getAvailableBlocks() * statFs.getBlockSize()) * 5) / 100;
        if (availableBlocks >= 10485760 && availableBlocks <= 52428800) {
            if (this.mEdmStorageProvider.putLong(i, "AUDITLOG", "auditLogBufferSize", availableBlocks)) {
                return availableBlocks;
            }
        } else if (availableBlocks >= 52428800 && this.mEdmStorageProvider.putLong(i, "AUDITLOG", "auditLogBufferSize", 52428800L)) {
            return 52428800L;
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean disableAuditLog(com.samsung.android.knox.ContextInfo r11) {
        /*
            r10 = this;
            com.samsung.android.knox.ContextInfo r1 = r10.enforceAuditLogPermission(r11)
            int r11 = r1.mCallerUid
            java.util.Map r0 = r10.mLinkedHashMap
            java.lang.Integer r2 = java.lang.Integer.valueOf(r11)
            java.lang.Object r0 = r0.get(r2)
            com.android.server.enterprise.auditlog.Admin r0 = (com.android.server.enterprise.auditlog.Admin) r0
            r2 = 1
            if (r0 == 0) goto L5d
            android.content.ContentValues r3 = new android.content.ContentValues
            r3.<init>()
            java.lang.String r4 = "auditLogEnabled"
            r5 = 0
            java.lang.String r6 = java.lang.String.valueOf(r5)
            r3.put(r4, r6)
            android.content.ContentValues r4 = new android.content.ContentValues
            r4.<init>()
            java.lang.String r6 = "adminUid"
            java.lang.Integer r7 = java.lang.Integer.valueOf(r11)
            r4.put(r6, r7)
            com.android.server.enterprise.storage.EdmStorageProvider r6 = r10.mEdmStorageProvider
            java.lang.String r7 = "AUDITLOG"
            int r3 = r6.update(r7, r3, r4)
            if (r3 <= 0) goto L5b
            r0.deleteAllFiles()
            java.util.Map r0 = r10.mLinkedHashMap
            monitor-enter(r0)
            java.util.Map r3 = r10.mLinkedHashMap     // Catch: java.lang.Throwable -> L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r11)     // Catch: java.lang.Throwable -> L58
            r3.remove(r4)     // Catch: java.lang.Throwable -> L58
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L58
            android.content.Context r0 = r10.mContext
            java.lang.String r3 = "AuditLog/isAuditLogEnabled"
            int r4 = android.os.UserHandle.getUserId(r11)
            com.android.server.enterprise.utils.SecContentProviderUtil.notifyPolicyChangesAsUser(r0, r3, r4)
            goto L5d
        L58:
            r10 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L58
            throw r10
        L5b:
            r9 = r5
            goto L5e
        L5d:
            r9 = r2
        L5e:
            if (r9 == 0) goto L73
            r2 = 5
            r3 = 2
            r4 = 1
            int r5 = android.os.Process.myPid()
            java.lang.String r6 = "AuditLogService"
            java.lang.String r7 = "AuditLog status has changed to disable"
            int r8 = android.os.UserHandle.getUserId(r11)
            r0 = r10
            r0.AuditLoggerAsUser(r1, r2, r3, r4, r5, r6, r7, r8)
        L73:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.auditlog.AuditLogService.disableAuditLog(com.samsung.android.knox.ContextInfo):boolean");
    }

    public final boolean checkAuditLogEnforce(String str, String str2) {
        boolean z = false;
        if (isAuditServiceRunning()) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                Log.d("AuditLogService", "Error: Invalid auditlog parameters!");
            } else {
                int callingUid = Binder.getCallingUid();
                String nameForUid = this.mContext.getPackageManager().getNameForUid(callingUid);
                if (!this.mMessagePackage.equals(nameForUid) && callingUid != 1999) {
                    z = true;
                }
                if (z) {
                    try {
                        enforceLoggerPermission();
                    } catch (SecurityException unused) {
                        if (!"com.android.chrome".equals(nameForUid)) {
                            Log.w("AuditLogService", "AuditLogger: Module does not have AuditLog permission. Package = " + nameForUid);
                        }
                        EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("AuditLogService", "AuditLogger");
                    }
                }
                return true;
            }
        }
        return false;
    }

    public void AuditLogger(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2) {
        RedactedAuditLogger(contextInfo, i, i2, z, i3, str, str2, null);
    }

    public void RedactedAuditLogger(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2, String str3) {
        if (checkAuditLogEnforce(str, str2)) {
            AuditLoggerInternal(contextInfo, i, i2, z, i3, str, str2, str3, -1, false);
        }
    }

    public void AuditLoggerAsUser(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2, int i4) {
        RedactedAuditLoggerAsUser(contextInfo, i, i2, z, i3, str, str2, null, i4);
    }

    public void RedactedAuditLoggerAsUser(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2, String str3, int i4) {
        String str4 = str2;
        if (checkAuditLogEnforce(str, str4)) {
            Matcher matcher = this.mPattern.matcher(str4);
            if (matcher.find()) {
                str4 = matcher.replaceFirst("$1 " + this.mContext.getPackageManager().getNameForUid(UserHandle.getAppId(Integer.parseInt(matcher.group(2)))) + " $3");
            }
            AuditLoggerInternal(contextInfo, i, i2, z, i3, str, str4, str3, i4, true);
        }
    }

    public void AuditLoggerPrivileged(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2) {
        RedactedAuditLoggerPrivileged(contextInfo, i, i2, z, i3, str, str2, null);
    }

    public void RedactedAuditLoggerPrivileged(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2, String str3) {
        if (checkAuditPrivilegedAllowed(str, str2)) {
            AuditLoggerInternal(contextInfo, i, i2, z, i3, str, appendLogMessageWithCallingUser(str2), str3, -1, false);
        }
    }

    public void AuditLoggerPrivilegedAsUser(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2, int i4) {
        RedactedAuditLoggerPrivilegedAsUser(contextInfo, i, i2, z, i3, str, str2, null, i4);
    }

    public void RedactedAuditLoggerPrivilegedAsUser(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2, String str3, int i4) {
        if (checkAuditPrivilegedAllowed(str, str2)) {
            AuditLoggerInternal(contextInfo, i, i2, z, i3, str, appendLogMessageWithCallingUser(str2), str3, i4, true);
        }
    }

    public final boolean checkAuditPrivilegedAllowed(String str, String str2) {
        if (isAuditServiceRunning()) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                Log.d("AuditLogService", "Error: Invalid auditlog parameters!");
            } else {
                for (String str3 : swComponentWhitelist) {
                    if (str.equals(str3)) {
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }

    public final String appendLogMessageWithCallingUser(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            String nameForUid = this.mContext.getPackageManager().getNameForUid(callingUid);
            String processName = getProcessName(callingPid);
            sb.append(str);
            sb.append("\n[logged by: ");
            sb.append(processName);
            sb.append("/");
            sb.append(nameForUid);
            sb.append(", pid: ");
            sb.append(callingPid);
            sb.append("]");
        } catch (IOException e) {
            Log.e("AuditLogService", "Exception: " + e.getMessage());
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007b, code lost:
    
        if (r1 == null) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0086: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:45:0x0086 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.Reader, java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getProcessName(int r8) {
        /*
            r7 = this;
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            r2.<init>()     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            java.lang.String r3 = "/proc/"
            r2.append(r3)     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            r2.append(r8)     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            java.lang.String r8 = "/cmdline"
            r2.append(r8)     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            r1.<init>(r8)     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L52
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4b
            java.lang.String r2 = "iso-8859-1"
            r8.<init>(r1, r2)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4b
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            r2.<init>(r8)     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
        L2d:
            int r0 = r2.read()     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L85
            if (r0 <= 0) goto L38
            char r0 = (char) r0     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L85
            r7.append(r0)     // Catch: java.io.IOException -> L3f java.lang.Throwable -> L85
            goto L2d
        L38:
            r2.close()
            r8.close()
            goto L7d
        L3f:
            r0 = move-exception
            goto L57
        L41:
            r7 = move-exception
            goto L87
        L43:
            r2 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
            goto L57
        L48:
            r7 = move-exception
            r8 = r0
            goto L87
        L4b:
            r8 = move-exception
            r2 = r0
            goto L55
        L4e:
            r7 = move-exception
            r8 = r0
            r1 = r8
            goto L87
        L52:
            r8 = move-exception
            r1 = r0
            r2 = r1
        L55:
            r0 = r8
            r8 = r2
        L57:
            java.lang.String r3 = "AuditLogService"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L85
            r4.<init>()     // Catch: java.lang.Throwable -> L85
            java.lang.String r5 = "Exception: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L85
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L85
            r4.append(r0)     // Catch: java.lang.Throwable -> L85
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L85
            android.util.Log.e(r3, r0)     // Catch: java.lang.Throwable -> L85
            if (r2 == 0) goto L76
            r2.close()
        L76:
            if (r8 == 0) goto L7b
            r8.close()
        L7b:
            if (r1 == 0) goto L80
        L7d:
            r1.close()
        L80:
            java.lang.String r7 = r7.toString()
            return r7
        L85:
            r7 = move-exception
            r0 = r2
        L87:
            if (r0 == 0) goto L8c
            r0.close()
        L8c:
            if (r8 == 0) goto L91
            r8.close()
        L91:
            if (r1 == 0) goto L96
            r1.close()
        L96:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.auditlog.AuditLogService.getProcessName(int):java.lang.String");
    }

    public final void AuditLoggerInternal(ContextInfo contextInfo, int i, int i2, boolean z, int i3, String str, String str2, String str3, int i4, boolean z2) {
        int i5;
        if (z2) {
            i5 = i4;
        } else {
            i5 = (Binder.getCallingPid() == Process.myPid() || i3 == Process.myPid()) ? -1 : UserHandle.getUserId(contextInfo != null ? contextInfo.mCallerUid : Binder.getCallingUid());
        }
        if (this.mLinkedHashMap.isEmpty()) {
            return;
        }
        Collection<Admin> values = this.mLinkedHashMap.values();
        synchronized (this.mLinkedHashMap) {
            for (Admin admin : values) {
                String evaluateLogMessageForWpcod = evaluateLogMessageForWpcod(admin, str2, str3, i5);
                if (!TextUtils.isEmpty(evaluateLogMessageForWpcod)) {
                    int userId = UserHandle.getUserId(admin.getUid());
                    if ((i5 == -1 || ((userId == 0 && !getPersonaManagerAdapter().isValidKnoxId(i5)) || ((userId == i5 && userId != 0) || checkOwnContainerOrSelf(i5, admin.getUid())))) && filterLoggingMessage(admin.getAuditLogRulesInfo(), i, z, i2, str, i5, evaluateLogMessageForWpcod, admin)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new Date().getTime());
                        sb.append(" ");
                        sb.append(i);
                        sb.append("/");
                        sb.append(i2);
                        sb.append("/");
                        sb.append(z ? "1" : "0");
                        sb.append("/");
                        sb.append(i3);
                        sb.append("/");
                        sb.append(i5);
                        sb.append("/");
                        sb.append(str);
                        sb.append("/");
                        sb.append(evaluateLogMessageForWpcod);
                        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                        admin.write(sb.toString());
                    }
                }
            }
        }
    }

    public final String evaluateLogMessageForWpcod(Admin admin, String str, String str2, int i) {
        if (admin.isPseudoAdminOfOrganizationOwnedDevice()) {
            if (str2 == null) {
                return str;
            }
        } else if (!admin.isProfileOwnerOfOrganizationOwnedDevice() || i != -1 || str2 == null) {
            return str;
        }
        return str2;
    }

    public final boolean checkOwnContainerOrSelf(int i, int i2) {
        Integer asInteger;
        if (!getPersonaManagerAdapter().isValidKnoxId(i)) {
            return false;
        }
        if (this.mContainerOwnerCache.containsKey(String.valueOf(i)) && (asInteger = this.mContainerOwnerCache.getAsInteger(String.valueOf(i))) != null) {
            if (asInteger.intValue() == i2) {
                return true;
            }
            int appId = UserHandle.getAppId(asInteger.intValue());
            int appId2 = UserHandle.getAppId(i2);
            int userId = UserHandle.getUserId(i2);
            if (appId == appId2 && i == userId) {
                return true;
            }
        }
        int mUMContainerOwnerUid = this.mEdmStorageProvider.getMUMContainerOwnerUid(i);
        this.mContainerOwnerCache.put(String.valueOf(i), Integer.valueOf(mUMContainerOwnerUid));
        if (mUMContainerOwnerUid == i2) {
            return true;
        }
        return UserHandle.getAppId(mUMContainerOwnerUid) == UserHandle.getAppId(i2) && i == UserHandle.getUserId(i2);
    }

    public int getCurrentLogFileSize(ContextInfo contextInfo) {
        Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(enforceAuditLogPermission(contextInfo).mCallerUid));
        if (admin != null) {
            return admin.getCurrentLogFileSize();
        }
        return 0;
    }

    public boolean setCriticalLogSize(ContextInfo contextInfo, int i) {
        boolean z = false;
        if (i >= 1 && i <= 99) {
            ContextInfo enforceAuditLogPermission = enforceAuditLogPermission(contextInfo);
            int i2 = enforceAuditLogPermission.mCallerUid;
            Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(i2));
            if (admin != null) {
                z = this.mEdmStorageProvider.putInt(i2, "AUDITLOG", "auditCriticalSize", i);
                if (!z) {
                    InformFailure.getInstance().broadcastFailure("Cannot set critcal log size on Databank", admin.getPackageName());
                }
                admin.setCriticalLogSize(i);
            }
            if (z) {
                AuditLoggerAsUser(enforceAuditLogPermission, 5, 2, true, Process.myPid(), "AuditLogService", String.format("AuditLog critical size has changed to %d", Integer.valueOf(i)), UserHandle.getUserId(i2));
            }
        }
        return z;
    }

    public int getCriticalLogSize(ContextInfo contextInfo) {
        Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(enforceAuditLogPermission(contextInfo).mCallerUid));
        if (admin != null) {
            return admin.getCriticalLogSize();
        }
        return 0;
    }

    public boolean setMaximumLogSize(ContextInfo contextInfo, int i) {
        boolean z = false;
        if (i >= 1 && i <= 99) {
            ContextInfo enforceAuditLogPermission = enforceAuditLogPermission(contextInfo);
            int i2 = enforceAuditLogPermission.mCallerUid;
            Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(i2));
            if (admin != null) {
                z = this.mEdmStorageProvider.putInt(i2, "AUDITLOG", "auditMaximumSize", i);
                if (!z) {
                    InformFailure.getInstance().broadcastFailure("Cannot set maximum log size on databank", admin.getPackageName());
                }
                admin.setMaximumLogSize(i);
            }
            if (z) {
                AuditLoggerAsUser(enforceAuditLogPermission, 5, 2, true, Process.myPid(), "AuditLogService", String.format("AuditLog maximum size has changed to %d", Integer.valueOf(i)), UserHandle.getUserId(i2));
            }
        }
        return z;
    }

    public int getMaximumLogSize(ContextInfo contextInfo) {
        Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(enforceAuditLogPermission(contextInfo).mCallerUid));
        if (admin != null) {
            return admin.getMaximumLogSize();
        }
        return 0;
    }

    public synchronized boolean dumpLogFile(ContextInfo contextInfo, long j, long j2, String str, ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            if (parcelFileDescriptor.getFileDescriptor() != null && parcelFileDescriptor.getFileDescriptor().valid()) {
                if (parcelFileDescriptor.canDetectErrors()) {
                    try {
                        Log.v("AuditLogService", "check error");
                        parcelFileDescriptor.checkError();
                    } catch (Exception unused) {
                        Log.v("AuditLogService", "error checking file descriptor");
                        return false;
                    }
                }
                try {
                    new SecurityManager().checkWrite(parcelFileDescriptor.getFileDescriptor());
                    Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(enforceAuditLogPermission(contextInfo).mCallerUid));
                    if (admin == null || admin.getDumpState()) {
                        return false;
                    }
                    if (!admin.setFilter(str)) {
                        return false;
                    }
                    return admin.dump(j, j2, parcelFileDescriptor);
                } catch (SecurityException unused2) {
                    Log.w("AuditLogService", "can't write to file descriptor");
                    return false;
                }
            }
        }
        Log.e("AuditLogService", "invalid output file");
        return false;
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onPreAdminRemoval(int i) {
        Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(i));
        if (admin != null) {
            synchronized (this.mLinkedHashMap) {
                this.mLinkedHashMap.remove(Integer.valueOf(i));
            }
            admin.shutdown();
            admin.deleteAllFiles();
        }
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminRemoved(int i) {
        Admin admin = (Admin) this.mLinkedHashMap.get(Integer.valueOf(i));
        if (admin != null) {
            synchronized (this.mLinkedHashMap) {
                this.mLinkedHashMap.remove(Integer.valueOf(i));
            }
            admin.shutdown();
            admin.deleteAllFiles();
        }
    }

    public final String getAdminPackageNameForUid(int i) {
        int appId = UserHandle.getAppId(i);
        if (i != 1000 && (appId < 10000 || appId > 19999)) {
            return "com.sec.enterprise.knox.cloudmdm.smdms";
        }
        String packageNameForUid = this.mEdmStorageProvider.getPackageNameForUid(i);
        return packageNameForUid == null ? this.mContext.getPackageManager().getNameForUid(i) : packageNameForUid;
    }

    public final boolean filterLoggingMessage(AuditLogRulesInfo auditLogRulesInfo, int i, boolean z, int i2, String str, int i3, String str2, Admin admin) {
        return filterBySeverity(i, auditLogRulesInfo) && filterByOutcome(z, auditLogRulesInfo) && filterByGroup(i2, auditLogRulesInfo) && filterByUser(i3, auditLogRulesInfo);
    }

    public final boolean filterBySeverity(int i, AuditLogRulesInfo auditLogRulesInfo) {
        return i <= auditLogRulesInfo.getSeverityRule();
    }

    public final boolean filterByOutcome(boolean z, AuditLogRulesInfo auditLogRulesInfo) {
        return auditLogRulesInfo.getOutcomeRule() == 2 || (z && auditLogRulesInfo.getOutcomeRule() == 1) || (!z && auditLogRulesInfo.getOutcomeRule() == 0);
    }

    public final boolean filterByGroup(int i, AuditLogRulesInfo auditLogRulesInfo) {
        return auditLogRulesInfo.getGroupsRule() == null || auditLogRulesInfo.getGroupsRule().isEmpty() || auditLogRulesInfo.getGroupsRule().contains(Integer.valueOf(i));
    }

    public final boolean filterByUser(int i, AuditLogRulesInfo auditLogRulesInfo) {
        return auditLogRulesInfo.getUsersRule() == null || auditLogRulesInfo.getUsersRule().isEmpty() || auditLogRulesInfo.getUsersRule().contains(Integer.valueOf(i)) || i == -1;
    }

    public final boolean validateRulesParameters(AuditLogRulesInfo auditLogRulesInfo) {
        return auditLogRulesInfo != null && auditLogRulesInfo.getSeverityRule() <= 5 && auditLogRulesInfo.getSeverityRule() >= 1 && auditLogRulesInfo.getOutcomeRule() >= 0 && auditLogRulesInfo.getOutcomeRule() <= 2;
    }

    public final String getSerialNumberInternal() {
        String str;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        String str2 = null;
        try {
            try {
                str = SystemProperties.get("ril.serialnumber", "");
            } catch (Exception unused) {
                Log.w("AuditLogService", "could not get property");
            }
            if (!TextUtils.isEmpty(str) && !str.equals("00000000000")) {
                str2 = str;
                return str2;
            }
            String str3 = SystemProperties.get("ro.boot.serialno", "");
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3;
            }
            return str2;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
