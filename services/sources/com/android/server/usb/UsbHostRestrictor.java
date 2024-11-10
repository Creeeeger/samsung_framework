package com.android.server.usb;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.FactoryTest;
import android.os.FileUtils;
import android.os.SystemProperties;
import android.os.UEventObserver;
import android.telephony.SubscriptionManager;
import android.util.sysfwutil.Slog;
import com.android.server.LocalServices;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.restriction.RestrictionPolicy;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class UsbHostRestrictor implements ActivityTaskManagerInternal.ScreenObserver {
    public static boolean bRestrictHostAPI = false;
    public static boolean isMDMBlock = false;
    public static boolean isSIMBlock = false;
    public static String mCurrentScrLckNodeValue = "0";
    public static String mCurrentSysNodeValue = "OFF";
    public static boolean mSecureKeyguardShowing = true;
    public static String mStrAllowList = "";
    public final Context mContext;
    public final UsbDeviceManager mDeviceManager;
    public final BroadcastReceiver mSubscriptionIntentReceiver;
    public final UEventObserver mUEventHostObserver;
    public final BroadcastReceiver mUsbHostRestrictionReceiver;

    public final String checkBuildType() {
        return "USER";
    }

    @Override // com.android.server.wm.ActivityTaskManagerInternal.ScreenObserver
    public void onAwakeStateChanged(boolean z) {
    }

    public UsbHostRestrictor(Context context, UsbDeviceManager usbDeviceManager) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.usb.UsbHostRestrictor.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                RestrictionPolicy restrictionPolicy;
                Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver Receiver onReceive");
                if (intent.getAction().equals("com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL")) {
                    int intExtra = intent.getIntExtra("reason", 0);
                    if (intExtra == 0) {
                        Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver : reason - ALLOW");
                        UsbHostRestrictor.isMDMBlock = false;
                        String checkWriteValue = UsbHostRestrictor.this.checkWriteValue();
                        if (UsbHostRestrictor.this.getUsbHostDisableSysNodeWritable()) {
                            if (UsbHostRestrictor.this.readDisableSysNodefromFile().equals("OFF")) {
                                Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver USB is already UNBLOCKED");
                                return;
                            }
                            if (UsbHostRestrictor.this.readDisableSysNodefromFile().contains("ON_ALL")) {
                                Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver USB ALL is already BLOCKED");
                                return;
                            } else {
                                if (checkWriteValue.equals("OFF")) {
                                    Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver UNBLOCK USB HOST");
                                    UsbHostRestrictor.this.writeDisableSysNodetoFile(checkWriteValue);
                                    return;
                                }
                                return;
                            }
                        }
                        if (UsbHostRestrictor.this.getUsbHostDisableSysNodeWritable()) {
                            return;
                        }
                        Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE");
                        return;
                    }
                    if (intExtra == 1) {
                        Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver : reason - DISALLOW");
                        UsbHostRestrictor.isMDMBlock = true;
                        String checkWriteValue2 = UsbHostRestrictor.this.checkWriteValue();
                        if (UsbHostRestrictor.this.getUsbHostDisableSysNodeWritable()) {
                            if (UsbHostRestrictor.this.readDisableSysNodefromFile().contains("ON_ALL")) {
                                Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver USB ALL is already BLOCKED");
                                return;
                            } else {
                                if (checkWriteValue2.equals("ON_HOST_MDM")) {
                                    Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver BLOCK USB HOST");
                                    UsbHostRestrictor.this.writeDisableSysNodetoFile(checkWriteValue2);
                                    return;
                                }
                                return;
                            }
                        }
                        Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver Cannot write for USB HOST DISABLE");
                        return;
                    }
                    if (intExtra == 2) {
                        Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver : reason - INIT");
                        EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(UsbHostRestrictor.this.mContext);
                        if (enterpriseDeviceManager == null || (restrictionPolicy = enterpriseDeviceManager.getRestrictionPolicy()) == null) {
                            return;
                        }
                        if (restrictionPolicy.isUsbHostStorageAllowed(false) && UsbHostRestrictor.isMDMBlock) {
                            Slog.d("UsbHostRestrictor", "mUsbHostRestrictionReceiver : reason - INIT - UNBLOCK USB HOST");
                            UsbHostRestrictor.isMDMBlock = false;
                            String checkWriteValue3 = UsbHostRestrictor.this.checkWriteValue();
                            if (UsbHostRestrictor.this.getUsbHostDisableSysNodeWritable()) {
                                if (UsbHostRestrictor.this.readDisableSysNodefromFile().contains("ON_ALL")) {
                                    Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver USB ALL is already BLOCKED");
                                    return;
                                } else {
                                    if (checkWriteValue3.equals("OFF")) {
                                        Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver UNBLOCK USB HOST");
                                        UsbHostRestrictor.this.writeDisableSysNodetoFile(checkWriteValue3);
                                        return;
                                    }
                                    return;
                                }
                            }
                            Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE");
                            return;
                        }
                        Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver : reason - INIT - Ignore bacuese of Multi admin policy or same value as previos");
                        return;
                    }
                    Slog.d("UsbHostRestrictor", "UsbHostRestrictionReceiver reason is unknown.");
                }
            }
        };
        this.mUsbHostRestrictionReceiver = broadcastReceiver;
        BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: com.android.server.usb.UsbHostRestrictor.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Slog.d("UsbHostRestrictor", "Subscription Receiver onReceive");
                if (intent.getAction().equals("android.intent.action.SIM_STATE_CHANGED")) {
                    String stringExtra = intent.getStringExtra("ss");
                    if (stringExtra.equals("LOADED")) {
                        int activeSubscriptionInfoCount = SubscriptionManager.from(UsbHostRestrictor.this.mContext).getActiveSubscriptionInfoCount();
                        Slog.d("UsbHostRestrictor", "Subscription Receiver Card Count is [" + activeSubscriptionInfoCount + "]");
                        if (activeSubscriptionInfoCount > 0) {
                            UsbHostRestrictor.isSIMBlock = false;
                            String checkWriteValue = UsbHostRestrictor.this.checkWriteValue();
                            if (UsbHostRestrictor.this.getUsbHostDisableSysNodeWritable()) {
                                if (UsbHostRestrictor.this.readDisableSysNodefromFile().equals("OFF")) {
                                    Slog.d("UsbHostRestrictor", "Subscription Receiver USB is already UNBLOCKED");
                                    return;
                                } else {
                                    if (checkWriteValue.equals("OFF") || checkWriteValue.equals("ON_HOST_MDM")) {
                                        UsbHostRestrictor.this.writeDisableSysNodetoFile(checkWriteValue);
                                        UsbHostRestrictor.this.mDeviceManager.updateUsbNotificationRefresh();
                                        return;
                                    }
                                    return;
                                }
                            }
                            if (UsbHostRestrictor.this.getUsbHostDisableSysNodeWritable()) {
                                return;
                            }
                            Slog.d("UsbHostRestrictor", "Subscription Receiver Cannot write for USB DISABLE");
                            return;
                        }
                        Slog.d("UsbHostRestrictor", "Subscription Receiver SIM is not recognized properly : card count is 0");
                        return;
                    }
                    Slog.d("UsbHostRestrictor", "Subscription Receiver SIM is not recognized properly : SIM_STATE_LOADED [" + stringExtra + "]");
                }
            }
        };
        this.mSubscriptionIntentReceiver = broadcastReceiver2;
        UEventObserver uEventObserver = new UEventObserver() { // from class: com.android.server.usb.UsbHostRestrictor.3
            /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x0098 A[Catch: NumberFormatException -> 0x009e, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x009e, blocks: (B:7:0x003e, B:9:0x0046, B:11:0x005a, B:14:0x0060, B:22:0x008c, B:24:0x0092, B:26:0x0098, B:28:0x0073, B:31:0x007d), top: B:6:0x003e }] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void onUEvent(android.os.UEventObserver.UEvent r6) {
                /*
                    r5 = this;
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r1 = "USB HOST UEVENT : event="
                    r0.append(r1)
                    java.lang.String r1 = r6.toString()
                    r0.append(r1)
                    java.lang.String r0 = r0.toString()
                    java.lang.String r1 = "UsbHostRestrictor"
                    android.util.sysfwutil.Slog.v(r1, r0)
                    java.lang.String r0 = "ACTION"
                    java.lang.String r0 = r6.get(r0)
                    java.lang.String r2 = "DEVPATH"
                    java.lang.String r2 = r6.get(r2)
                    java.lang.String r3 = "STATE"
                    java.lang.String r3 = r6.get(r3)
                    java.lang.String r4 = "change"
                    boolean r0 = r4.equals(r0)
                    if (r0 == 0) goto Lb2
                    if (r3 == 0) goto Lb2
                    java.lang.String r0 = "/devices/virtual/host_notify"
                    boolean r0 = r2.startsWith(r0)
                    if (r0 == 0) goto Lb2
                    java.lang.String r0 = "BLOCK"
                    boolean r0 = r0.equals(r3)     // Catch: java.lang.NumberFormatException -> L9e
                    if (r0 == 0) goto Lb2
                    com.android.server.usb.UsbHostRestrictor r0 = com.android.server.usb.UsbHostRestrictor.this     // Catch: java.lang.NumberFormatException -> L9e
                    android.content.Context r0 = com.android.server.usb.UsbHostRestrictor.m12298$$Nest$fgetmContext(r0)     // Catch: java.lang.NumberFormatException -> L9e
                    android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.NumberFormatException -> L9e
                    java.lang.String r2 = "user_setup_complete"
                    r3 = 1
                    int r0 = android.provider.Settings.Secure.getInt(r0, r2, r3)     // Catch: java.lang.NumberFormatException -> L9e
                    if (r0 == r3) goto L60
                    java.lang.String r5 = "UEventObserver SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"
                    android.util.sysfwutil.Slog.d(r1, r5)     // Catch: java.lang.NumberFormatException -> L9e
                    goto Lb2
                L60:
                    java.lang.String r0 = com.android.server.usb.UsbHostRestrictor.m12307$$Nest$sfgetmCurrentSysNodeValue()     // Catch: java.lang.NumberFormatException -> L9e
                    int r2 = r0.hashCode()     // Catch: java.lang.NumberFormatException -> L9e
                    r4 = -2094529313(0xffffffff832804df, float:-4.9376354E-37)
                    if (r2 == r4) goto L7d
                    r4 = 278144665(0x10942699, float:5.8435176E-29)
                    if (r2 == r4) goto L73
                    goto L87
                L73:
                    java.lang.String r2 = "ON_ALL_SIM"
                    boolean r0 = r0.equals(r2)     // Catch: java.lang.NumberFormatException -> L9e
                    if (r0 == 0) goto L87
                    r0 = 0
                    goto L88
                L7d:
                    java.lang.String r2 = "ON_HOST_MDM"
                    boolean r0 = r0.equals(r2)     // Catch: java.lang.NumberFormatException -> L9e
                    if (r0 == 0) goto L87
                    r0 = r3
                    goto L88
                L87:
                    r0 = -1
                L88:
                    if (r0 == 0) goto L98
                    if (r0 == r3) goto L92
                    java.lang.String r5 = "USB HOST is BLOCKED by UNKNOWN. Do Nothing!"
                    android.util.sysfwutil.Slog.d(r1, r5)     // Catch: java.lang.NumberFormatException -> L9e
                    goto Lb2
                L92:
                    com.android.server.usb.UsbHostRestrictor r5 = com.android.server.usb.UsbHostRestrictor.this     // Catch: java.lang.NumberFormatException -> L9e
                    com.android.server.usb.UsbHostRestrictor.m12304$$Nest$mshowMDMToast(r5)     // Catch: java.lang.NumberFormatException -> L9e
                    goto Lb2
                L98:
                    com.android.server.usb.UsbHostRestrictor r5 = com.android.server.usb.UsbHostRestrictor.this     // Catch: java.lang.NumberFormatException -> L9e
                    com.android.server.usb.UsbHostRestrictor.m12303$$Nest$mshowAlertDialog(r5)     // Catch: java.lang.NumberFormatException -> L9e
                    goto Lb2
                L9e:
                    java.lang.StringBuilder r5 = new java.lang.StringBuilder
                    r5.<init>()
                    java.lang.String r0 = "Could not parse state or devPath from event "
                    r5.append(r0)
                    r5.append(r6)
                    java.lang.String r5 = r5.toString()
                    android.util.sysfwutil.Slog.e(r1, r5)
                Lb2:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.server.usb.UsbHostRestrictor.AnonymousClass3.onUEvent(android.os.UEventObserver$UEvent):void");
            }
        };
        this.mUEventHostObserver = uEventObserver;
        this.mContext = context;
        this.mDeviceManager = usbDeviceManager;
        uEventObserver.startObserving("DEVPATH=/devices/virtual/host_notify");
        context.registerReceiver(broadcastReceiver, new IntentFilter("com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"));
        context.registerReceiver(broadcastReceiver2, new IntentFilter("android.intent.action.SIM_STATE_CHANGED"));
    }

    public void bootCompleted() {
        initSetUsbBlock();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0153 A[Catch: IOException -> 0x014f, TRY_LEAVE, TryCatch #15 {IOException -> 0x014f, blocks: (B:34:0x014b, B:28:0x0153), top: B:33:0x014b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0123 A[Catch: IOException -> 0x011f, TRY_LEAVE, TryCatch #21 {IOException -> 0x011f, blocks: (B:45:0x011b, B:39:0x0123), top: B:44:0x011b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f2 A[Catch: IOException -> 0x00ee, TRY_LEAVE, TryCatch #3 {IOException -> 0x00ee, blocks: (B:56:0x00ea, B:50:0x00f2), top: B:55:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x016b A[Catch: IOException -> 0x0167, TRY_LEAVE, TryCatch #17 {IOException -> 0x0167, blocks: (B:79:0x0163, B:72:0x016b), top: B:78:0x0163 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0163 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.io.FileReader] */
    /* JADX WARN: Type inference failed for: r8v14, types: [java.io.FileReader] */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.io.FileReader] */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35 */
    /* JADX WARN: Type inference failed for: r8v39, types: [java.io.FileReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getSalesCode() {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.usb.UsbHostRestrictor.getSalesCode():java.lang.String");
    }

    public final void initSetUsbBlock() {
        Slog.d("UsbHostRestrictor", "initSetUsbBlock STARTED");
        boolean equals = SystemProperties.get("sys.config.usbSIMblock", "true").equals("true");
        String salesCode = getSalesCode();
        if ("null".equals(salesCode) || salesCode == null) {
            Slog.d("UsbHostRestrictor", "checkUsbBlockingCondition : salesCode is null");
            salesCode = "OXA";
        }
        int size = SubscriptionManager.from(this.mContext).getAllSubscriptionInfoList().size();
        if (size != 0) {
            if (size <= 0) {
                if (size < 0) {
                    Slog.d("UsbHostRestrictor", "SIM COUNT value is abnormal");
                    return;
                }
                return;
            } else {
                Slog.d("UsbHostRestrictor", "SIM has been already inserted");
                String checkWriteValue = checkWriteValue();
                if (getUsbHostDisableSysNodeWritable()) {
                    writeDisableSysNodetoFile(checkWriteValue);
                    return;
                } else {
                    Slog.d("UsbHostRestrictor", "Can NOT Write Disable Sys Node 2");
                    return;
                }
            }
        }
        Slog.d("UsbHostRestrictor", "SIM was never inserted");
        if (equals && !FactoryTest.isFactoryBinary() && ("CHM".equals(salesCode) || "CBK".equals(salesCode))) {
            Slog.d("UsbHostRestrictor", "NEED to BLOCK by NO SIM");
            isSIMBlock = true;
        }
        String checkWriteValue2 = checkWriteValue();
        if (getUsbHostDisableSysNodeWritable()) {
            writeDisableSysNodetoFile(checkWriteValue2);
        } else {
            Slog.d("UsbHostRestrictor", "Can NOT Write Disable Sys Node 1");
        }
    }

    public final String checkWriteValue() {
        Slog.d("UsbHostRestrictor", "checkWriteValue : isSIMBlock=" + isSIMBlock + ", isMDMBlock=" + isMDMBlock);
        return isSIMBlock ? "ON_ALL_SIM" : isMDMBlock ? "ON_HOST_MDM" : "OFF";
    }

    public final void writeDisableSysNodetoFile(String str) {
        Slog.d("UsbHostRestrictor", "Write Disable Sys Node with [" + str + "]");
        try {
            if (checkUsbBlockingCondition(str)) {
                FileUtils.stringToFile("/sys/class/usb_notify/usb_control/disable", str);
                mCurrentSysNodeValue = str;
                this.mDeviceManager.setUsbDisableVariable(str);
                this.mDeviceManager.updateUsbNotificationRefresh();
            } else {
                FileUtils.stringToFile("/sys/class/usb_notify/usb_control/disable", "OFF");
                mCurrentSysNodeValue = "OFF";
                this.mDeviceManager.setUsbDisableVariable("OFF");
            }
        } catch (IOException e) {
            Slog.e("UsbHostRestrictor", "Failed to write to DISABLE FILE");
            Slog.d("UsbHostRestrictor", "IOException : " + e);
            mCurrentSysNodeValue = "OFF";
            this.mDeviceManager.setUsbDisableVariable("OFF");
        }
    }

    public final boolean checkUsbBlockingCondition(String str) {
        String salesCode = getSalesCode();
        if ("null".equals(salesCode) || salesCode == null) {
            Slog.d("UsbHostRestrictor", "checkUsbBlockingCondition : salesCode is null");
            salesCode = "OXA";
        }
        if ("ENG".equals(checkBuildType())) {
            Slog.d("UsbHostRestrictor", "Cannot DISABLE USB at ENG BINARY");
            return false;
        }
        if ("USER".equals(checkBuildType()) && !FactoryTest.isFactoryBinary()) {
            if ("CHM".equals(salesCode) || "CBK".equals(salesCode)) {
                if (str.equals("ON_ALL_SIM") || str.equals("ON_HOST_MDM")) {
                    Slog.d("UsbHostRestrictor", "DISABLE USB for USER BINARY and CMCC MODEL or MDM block");
                    return true;
                }
                if ("OFF".equals(str)) {
                    Slog.d("UsbHostRestrictor", "NOT DISABLE USB 1");
                    return false;
                }
                Slog.d("UsbHostRestrictor", "NOT DISABLE USB 2");
                return false;
            }
            if (str.equals("ON_HOST_MDM")) {
                Slog.d("UsbHostRestrictor", "DISABLE USB for MDM block");
                return true;
            }
            Slog.d("UsbHostRestrictor", "NOT DISABLE USB 3");
            return false;
        }
        Slog.d("UsbHostRestrictor", "NOT DISABLE USB 4");
        return false;
    }

    public final String readDisableSysNodefromFile() {
        String str;
        try {
            str = FileUtils.readTextFile(new File("/sys/class/usb_notify/usb_control/disable"), 0, null).trim();
        } catch (IOException unused) {
            Slog.e("UsbHostRestrictor", "Failed to read from DISABLE FILE");
            str = "";
        }
        if (str.contains("ON")) {
            mCurrentSysNodeValue = str;
            this.mDeviceManager.setUsbDisableVariable(str);
        } else {
            mCurrentSysNodeValue = "OFF";
            this.mDeviceManager.setUsbDisableVariable("OFF");
        }
        return str;
    }

    public final boolean getUsbHostDisableSysNodeWritable() {
        return new File("/sys/class/usb_notify/usb_control/disable").exists();
    }

    public final void showAlertDialog() {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.samsung.android.settings.SettingsReceiverActivity");
        intent.putExtra("cmcc_block_usb", true);
        intent.addFlags(268435456);
        try {
            this.mContext.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Slog.d("UsbHostRestrictor", "Unable to start activity to show the USB BLOCK Dialog : " + e);
        }
    }

    public final void showMDMToast() {
        RestrictionPolicy restrictionPolicy;
        Slog.d("UsbHostRestrictor", "showMDMToast");
        EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(this.mContext);
        if (enterpriseDeviceManager == null || (restrictionPolicy = enterpriseDeviceManager.getRestrictionPolicy()) == null) {
            return;
        }
        restrictionPolicy.isUsbHostStorageAllowed(true);
    }

    public static boolean isUsbBlocked() {
        if (mCurrentSysNodeValue.contains("ON")) {
            return true;
        }
        if (!mCurrentSysNodeValue.equals("OFF")) {
            Slog.d("UsbHostRestrictor", "Current USB BLOCK STATE is UNKNOWN!! So USB is UNBLOCKED as a default value");
        }
        return false;
    }

    public static boolean isSupportDexRestrict() {
        File file = new File("/sys/class/usb_notify/usb_control/whitelist_for_mdm");
        Slog.d("UsbHostRestrictor", "isSupportDexRestrict [" + file.exists() + ", " + file.isFile() + ", " + file.canWrite() + "]");
        return file.exists() && file.isFile() && file.canWrite();
    }

    public static int restrictUsbHostInterface(boolean z, String str) {
        Slog.d("UsbHostRestrictor", "restrictUsbHostInterface(" + z + ", " + str + ")");
        if (isSupportDexRestrict()) {
            try {
                bRestrictHostAPI = z;
                mStrAllowList = str;
                FileUtils.stringToFile("/sys/class/usb_notify/usb_control/whitelist_for_mdm", str);
                return 0;
            } catch (Exception e) {
                Slog.e("UsbHostRestrictor", "restrictUsbHostInterface() fail - " + e);
                return -1;
            }
        }
        Slog.e("UsbHostRestrictor", "restrictUsbHostInterface() node error");
        return -1;
    }

    public void systemReady() {
        Slog.d("UsbHostRestrictor", "systemReady");
        ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).registerScreenObserver(this);
    }

    @Override // com.android.server.wm.ActivityTaskManagerInternal.ScreenObserver
    public void onKeyguardStateChanged(boolean z) {
        boolean z2 = z && ((KeyguardManager) this.mContext.getSystemService(KeyguardManager.class)).isDeviceSecure(ActivityManager.getCurrentUser());
        if (mSecureKeyguardShowing != z2) {
            mSecureKeyguardShowing = z2;
        }
        readScrLckBlkSysNodefromFile();
        if (z2) {
            Slog.d("UsbHostRestrictor", "onKeyguardStateChanged: Screen Lock On");
            writeScrLckBlkSysNodetoFile("1");
        } else {
            if (z2) {
                return;
            }
            Slog.d("UsbHostRestrictor", "onKeyguardStateChanged: Screen Lock Off");
            writeScrLckBlkSysNodetoFile("0");
        }
    }

    public final String readScrLckBlkSysNodefromFile() {
        try {
            return FileUtils.readTextFile(new File("/sys/class/usb_notify/usb_control/usb_sl"), 0, null).trim();
        } catch (IOException unused) {
            Slog.e("UsbHostRestrictor", "Failed to read from ScrLck Block FILE");
            return "";
        }
    }

    public final void writeScrLckBlkSysNodetoFile(String str) {
        Slog.d("UsbHostRestrictor", "Write ScrLck Block FILE");
        try {
            FileUtils.stringToFile("/sys/class/usb_notify/usb_control/usb_sl", str);
            mCurrentScrLckNodeValue = str;
        } catch (IOException e) {
            Slog.e("UsbHostRestrictor", "Failed to write to ScrLck Block FILE");
            Slog.d("UsbHostRestrictor", "IOException : " + e);
            mCurrentScrLckNodeValue = "0";
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter) {
        printWriter.println("USB Host Restrictor State:");
        printWriter.println("  All SIM Count:" + SubscriptionManager.from(this.mContext).getAllSubscriptionInfoList().size());
        printWriter.println("  Disable Sys Node Value :" + readDisableSysNodefromFile());
        printWriter.println("  Disable Sys Node Writable :" + String.valueOf(getUsbHostDisableSysNodeWritable()));
        printWriter.println("  mCurrentSysNodeValue :" + mCurrentSysNodeValue);
        printWriter.println("  SIM BLOCK ON/OFF :" + isSIMBlock);
        printWriter.println("  MDM BLOCK ON/OFF :" + isMDMBlock);
        printWriter.println("  CurrentScrLckStateValue :" + mCurrentScrLckNodeValue);
        printWriter.println("  MDM bRestrictHostAPI :" + bRestrictHostAPI);
        printWriter.println("  MDM mStrAllowList :" + mStrAllowList);
    }
}
