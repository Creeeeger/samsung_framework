package com.android.server.display;

import android.hardware.display.BrightnessInfo;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.IThermalEventListener;
import android.os.IThermalService;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.Temperature;
import android.provider.DeviceConfig;
import android.provider.DeviceConfigInterface;
import android.util.Slog;
import com.android.server.display.BrightnessThrottler;
import com.android.server.display.DisplayDeviceConfig;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class BrightnessThrottler {
    public float mBrightnessCap;
    public int mBrightnessMaxReason;
    public HashMap mDdcThermalThrottlingDataMap;
    public final DeviceConfigInterface mDeviceConfig;
    public final Handler mDeviceConfigHandler;
    public final DeviceConfigListener mDeviceConfigListener;
    public final Handler mHandler;
    public final Injector mInjector;
    public final SkinThermalStatusObserver mSkinThermalStatusObserver;
    public String mThermalBrightnessThrottlingDataId;
    public final HashMap mThermalBrightnessThrottlingDataOverride;
    public String mThermalBrightnessThrottlingDataString;
    public DisplayDeviceConfig.ThermalBrightnessThrottlingData mThermalThrottlingData;
    public final Runnable mThrottlingChangeCallback;
    public int mThrottlingStatus;
    public String mUniqueDisplayId;

    public BrightnessThrottler(Handler handler, Runnable runnable, String str, String str2, HashMap hashMap) {
        this(new Injector(), handler, handler, runnable, str, str2, hashMap);
    }

    public BrightnessThrottler(Injector injector, Handler handler, Handler handler2, Runnable runnable, String str, String str2, HashMap hashMap) {
        this.mBrightnessCap = 1.0f;
        this.mBrightnessMaxReason = 0;
        this.mThermalBrightnessThrottlingDataOverride = new HashMap(1);
        this.mInjector = injector;
        this.mHandler = handler;
        this.mDeviceConfigHandler = handler2;
        this.mDdcThermalThrottlingDataMap = hashMap;
        this.mThrottlingChangeCallback = runnable;
        this.mSkinThermalStatusObserver = new SkinThermalStatusObserver(injector, handler);
        this.mUniqueDisplayId = str;
        this.mDeviceConfig = injector.getDeviceConfig();
        this.mDeviceConfigListener = new DeviceConfigListener();
        this.mThermalBrightnessThrottlingDataId = str2;
        this.mDdcThermalThrottlingDataMap = hashMap;
        loadThermalBrightnessThrottlingDataFromDeviceConfig();
        loadThermalBrightnessThrottlingDataFromDisplayDeviceConfig(this.mDdcThermalThrottlingDataMap, this.mThermalBrightnessThrottlingDataId, this.mUniqueDisplayId);
    }

    public boolean deviceSupportsThrottling() {
        return this.mThermalThrottlingData != null;
    }

    public float getBrightnessCap() {
        return this.mBrightnessCap;
    }

    public int getBrightnessMaxReason() {
        return this.mBrightnessMaxReason;
    }

    public boolean isThrottled() {
        return this.mBrightnessMaxReason != 0;
    }

    public void stop() {
        this.mSkinThermalStatusObserver.stopObserving();
        this.mDeviceConfig.removeOnPropertiesChangedListener(this.mDeviceConfigListener);
        this.mBrightnessCap = 1.0f;
        this.mBrightnessMaxReason = 0;
        this.mThrottlingStatus = -1;
    }

    public void loadThermalBrightnessThrottlingDataFromDisplayDeviceConfig(HashMap hashMap, String str, String str2) {
        this.mDdcThermalThrottlingDataMap = hashMap;
        this.mThermalBrightnessThrottlingDataId = str;
        this.mUniqueDisplayId = str2;
        resetThermalThrottlingData();
    }

    public final float verifyAndConstrainBrightnessCap(float f) {
        if (f < DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
            Slog.e("BrightnessThrottler", "brightness " + f + " is lower than the minimum possible brightness " + DisplayPowerController2.RATE_FROM_DOZE_TO_ON);
            f = 0.0f;
        }
        if (f <= 1.0f) {
            return f;
        }
        Slog.e("BrightnessThrottler", "brightness " + f + " is higher than the maximum possible brightness 1.0");
        return 1.0f;
    }

    public final void thermalStatusChanged(int i) {
        if (this.mThrottlingStatus != i) {
            this.mThrottlingStatus = i;
            updateThermalThrottling();
        }
    }

    public final void updateThermalThrottling() {
        DisplayDeviceConfig.ThermalBrightnessThrottlingData thermalBrightnessThrottlingData;
        if (deviceSupportsThrottling()) {
            float f = 1.0f;
            int i = 0;
            if (this.mThrottlingStatus != -1 && (thermalBrightnessThrottlingData = this.mThermalThrottlingData) != null) {
                for (DisplayDeviceConfig.ThermalBrightnessThrottlingData.ThrottlingLevel throttlingLevel : thermalBrightnessThrottlingData.throttlingLevels) {
                    if (throttlingLevel.thermalStatus > this.mThrottlingStatus) {
                        break;
                    }
                    f = throttlingLevel.brightness;
                    i = 1;
                }
            }
            if (this.mBrightnessCap == f && this.mBrightnessMaxReason == i) {
                return;
            }
            this.mBrightnessCap = verifyAndConstrainBrightnessCap(f);
            this.mBrightnessMaxReason = i;
            Runnable runnable = this.mThrottlingChangeCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public void dump(final PrintWriter printWriter) {
        this.mHandler.runWithScissors(new Runnable() { // from class: com.android.server.display.BrightnessThrottler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BrightnessThrottler.this.lambda$dump$0(printWriter);
            }
        }, 1000L);
    }

    /* renamed from: dumpLocal, reason: merged with bridge method [inline-methods] */
    public final void lambda$dump$0(PrintWriter printWriter) {
        printWriter.println("BrightnessThrottler:");
        printWriter.println("  mThermalBrightnessThrottlingDataId=" + this.mThermalBrightnessThrottlingDataId);
        printWriter.println("  mThermalThrottlingData=" + this.mThermalThrottlingData);
        printWriter.println("  mUniqueDisplayId=" + this.mUniqueDisplayId);
        printWriter.println("  mThrottlingStatus=" + this.mThrottlingStatus);
        printWriter.println("  mBrightnessCap=" + this.mBrightnessCap);
        printWriter.println("  mBrightnessMaxReason=" + BrightnessInfo.briMaxReasonToString(this.mBrightnessMaxReason));
        printWriter.println("  mDdcThermalThrottlingDataMap=" + this.mDdcThermalThrottlingDataMap);
        printWriter.println("  mThermalBrightnessThrottlingDataOverride=" + this.mThermalBrightnessThrottlingDataOverride);
        printWriter.println("  mThermalBrightnessThrottlingDataString=" + this.mThermalBrightnessThrottlingDataString);
        this.mSkinThermalStatusObserver.dump(printWriter);
    }

    public final String getThermalBrightnessThrottlingDataString() {
        return this.mDeviceConfig.getString("display_manager", "brightness_throttling_data", (String) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean parseAndAddData(java.lang.String r17, java.util.HashMap r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            java.lang.String r3 = "'"
            java.lang.String r4 = "BrightnessThrottler"
            java.lang.String r5 = ","
            java.lang.String[] r5 = r1.split(r5)
            r6 = 1
            r7 = 0
            r8 = r5[r7]     // Catch: java.lang.Throwable -> L98
            r9 = 2
            r10 = r5[r6]     // Catch: java.lang.Throwable -> L95
            int r10 = java.lang.Integer.parseInt(r10)     // Catch: java.lang.Throwable -> L95
            java.util.ArrayList r11 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L95
            r11.<init>(r10)     // Catch: java.lang.Throwable -> L95
            r12 = r7
        L21:
            if (r12 >= r10) goto L45
            int r13 = r9 + 1
            r9 = r5[r9]     // Catch: java.lang.Throwable -> L42
            int r9 = r0.parseThermalStatus(r9)     // Catch: java.lang.Throwable -> L42
            int r14 = r13 + 1
            r13 = r5[r13]     // Catch: java.lang.Throwable -> L3f
            float r13 = r0.parseBrightness(r13)     // Catch: java.lang.Throwable -> L3f
            com.android.server.display.DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel r15 = new com.android.server.display.DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel     // Catch: java.lang.Throwable -> L3f
            r15.<init>(r9, r13)     // Catch: java.lang.Throwable -> L3f
            r11.add(r15)     // Catch: java.lang.Throwable -> L3f
            int r12 = r12 + 1
            r9 = r14
            goto L21
        L3f:
            r0 = move-exception
            r6 = r14
            goto L99
        L42:
            r0 = move-exception
            r6 = r13
            goto L99
        L45:
            int r0 = r5.length     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            if (r9 >= r0) goto L51
            int r10 = r9 + 1
            r0 = r5[r9]     // Catch: java.lang.Throwable -> L4e
            r9 = r10
            goto L53
        L4e:
            r0 = move-exception
            r6 = r10
            goto L99
        L51:
            java.lang.String r0 = "default"
        L53:
            com.android.server.display.DisplayDeviceConfig$ThermalBrightnessThrottlingData r10 = com.android.server.display.DisplayDeviceConfig.ThermalBrightnessThrottlingData.create(r11)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            java.lang.Object r11 = r2.get(r8)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            java.util.HashMap r11 = (java.util.HashMap) r11     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            if (r11 != 0) goto L6b
            java.util.HashMap r11 = new java.util.HashMap     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            r11.<init>()     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            r11.put(r0, r10)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            r2.put(r8, r11)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            goto Lb2
        L6b:
            boolean r2 = r11.containsKey(r0)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            if (r2 == 0) goto L91
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            r2.<init>()     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            java.lang.String r6 = "Throttling data for display "
            r2.append(r6)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            r2.append(r8)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            java.lang.String r6 = "contains duplicate throttling ids: '"
            r2.append(r6)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            r2.append(r0)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            r2.append(r3)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            java.lang.String r0 = r2.toString()     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            android.util.Slog.e(r4, r0)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            return r7
        L91:
            r11.put(r0, r10)     // Catch: java.lang.Throwable -> L95 java.lang.Throwable -> L95 java.lang.Throwable -> L95
            goto Lb2
        L95:
            r0 = move-exception
            r6 = r9
            goto L99
        L98:
            r0 = move-exception
        L99:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r8 = "Throttling data is invalid array: '"
            r2.append(r8)
            r2.append(r1)
            r2.append(r3)
            java.lang.String r1 = r2.toString()
            android.util.Slog.e(r4, r1, r0)
            r9 = r6
            r6 = r7
        Lb2:
            int r0 = r5.length
            if (r9 == r0) goto Lb6
            goto Lb7
        Lb6:
            r7 = r6
        Lb7:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.display.BrightnessThrottler.parseAndAddData(java.lang.String, java.util.HashMap):boolean");
    }

    public final void loadThermalBrightnessThrottlingDataFromDeviceConfig() {
        boolean z = true;
        HashMap hashMap = new HashMap(1);
        this.mThermalBrightnessThrottlingDataString = getThermalBrightnessThrottlingDataString();
        this.mThermalBrightnessThrottlingDataOverride.clear();
        String str = this.mThermalBrightnessThrottlingDataString;
        if (str != null) {
            String[] split = str.split(KnoxVpnFirewallHelper.DELIMITER);
            int length = split.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (!parseAndAddData(split[i], hashMap)) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                this.mThermalBrightnessThrottlingDataOverride.putAll(hashMap);
                hashMap.clear();
                return;
            }
            return;
        }
        Slog.w("BrightnessThrottler", "DeviceConfig ThermalBrightnessThrottlingData is null");
    }

    public final void resetThermalThrottlingData() {
        stop();
        this.mDeviceConfigListener.startListening();
        this.mThermalThrottlingData = getConfigFromId(this.mThermalBrightnessThrottlingDataId);
        if (!"default".equals(this.mThermalBrightnessThrottlingDataId) && this.mThermalThrottlingData == null) {
            this.mThermalThrottlingData = getConfigFromId("default");
            Slog.d("BrightnessThrottler", "Falling back to default throttling Id");
        }
        if (deviceSupportsThrottling()) {
            this.mSkinThermalStatusObserver.startObserving();
        }
    }

    public final DisplayDeviceConfig.ThermalBrightnessThrottlingData getConfigFromId(String str) {
        DisplayDeviceConfig.ThermalBrightnessThrottlingData thermalBrightnessThrottlingData = this.mThermalBrightnessThrottlingDataOverride.get(this.mUniqueDisplayId) == null ? null : (DisplayDeviceConfig.ThermalBrightnessThrottlingData) ((HashMap) this.mThermalBrightnessThrottlingDataOverride.get(this.mUniqueDisplayId)).get(str);
        return thermalBrightnessThrottlingData == null ? (DisplayDeviceConfig.ThermalBrightnessThrottlingData) this.mDdcThermalThrottlingDataMap.get(str) : thermalBrightnessThrottlingData;
    }

    /* loaded from: classes2.dex */
    public class DeviceConfigListener implements DeviceConfig.OnPropertiesChangedListener {
        public Executor mExecutor;

        public DeviceConfigListener() {
            this.mExecutor = new HandlerExecutor(BrightnessThrottler.this.mDeviceConfigHandler);
        }

        public void startListening() {
            BrightnessThrottler.this.mDeviceConfig.addOnPropertiesChangedListener("display_manager", this.mExecutor, this);
        }

        public void onPropertiesChanged(DeviceConfig.Properties properties) {
            BrightnessThrottler.this.loadThermalBrightnessThrottlingDataFromDeviceConfig();
            BrightnessThrottler.this.resetThermalThrottlingData();
        }
    }

    public final float parseBrightness(String str) {
        float parseFloat = Float.parseFloat(str);
        if (parseFloat < DisplayPowerController2.RATE_FROM_DOZE_TO_ON || parseFloat > 1.0f) {
            throw new NumberFormatException("Brightness constraint value out of bounds.");
        }
        return parseFloat;
    }

    public final int parseThermalStatus(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -905723276:
                if (str.equals("severe")) {
                    c = 0;
                    break;
                }
                break;
            case -618857213:
                if (str.equals("moderate")) {
                    c = 1;
                    break;
                }
                break;
            case -169343402:
                if (str.equals("shutdown")) {
                    c = 2;
                    break;
                }
                break;
            case 3387192:
                if (str.equals("none")) {
                    c = 3;
                    break;
                }
                break;
            case 102970646:
                if (str.equals("light")) {
                    c = 4;
                    break;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    c = 5;
                    break;
                }
                break;
            case 1952151455:
                if (str.equals("critical")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 3;
            case 1:
                return 2;
            case 2:
                return 6;
            case 3:
                return 0;
            case 4:
                return 1;
            case 5:
                return 5;
            case 6:
                return 4;
            default:
                throw new UnknownThermalStatusException("Invalid Thermal Status: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class UnknownThermalStatusException extends Exception {
        public UnknownThermalStatusException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public final class SkinThermalStatusObserver extends IThermalEventListener.Stub {
        public final Handler mHandler;
        public final Injector mInjector;
        public boolean mStarted;
        public IThermalService mThermalService;

        public SkinThermalStatusObserver(Injector injector, Handler handler) {
            this.mInjector = injector;
            this.mHandler = handler;
        }

        public void notifyThrottling(final Temperature temperature) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.display.BrightnessThrottler$SkinThermalStatusObserver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BrightnessThrottler.SkinThermalStatusObserver.this.lambda$notifyThrottling$0(temperature);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$notifyThrottling$0(Temperature temperature) {
            BrightnessThrottler.this.thermalStatusChanged(temperature.getStatus());
        }

        public void startObserving() {
            if (this.mStarted) {
                return;
            }
            IThermalService thermalService = this.mInjector.getThermalService();
            this.mThermalService = thermalService;
            if (thermalService == null) {
                Slog.e("BrightnessThrottler", "Could not observe thermal status. Service not available");
                return;
            }
            try {
                thermalService.registerThermalEventListenerWithType(this, 3);
                this.mStarted = true;
            } catch (RemoteException e) {
                Slog.e("BrightnessThrottler", "Failed to register thermal status listener", e);
            }
        }

        public void stopObserving() {
            if (this.mStarted) {
                try {
                    this.mThermalService.unregisterThermalEventListener(this);
                    this.mStarted = false;
                } catch (RemoteException e) {
                    Slog.e("BrightnessThrottler", "Failed to unregister thermal status listener", e);
                }
                this.mThermalService = null;
            }
        }

        public void dump(PrintWriter printWriter) {
            printWriter.println("  SkinThermalStatusObserver:");
            printWriter.println("    mStarted: " + this.mStarted);
            if (this.mThermalService != null) {
                printWriter.println("    ThermalService available");
            } else {
                printWriter.println("    ThermalService not available");
            }
        }
    }

    /* loaded from: classes2.dex */
    public class Injector {
        public IThermalService getThermalService() {
            return IThermalService.Stub.asInterface(ServiceManager.getService("thermalservice"));
        }

        public DeviceConfigInterface getDeviceConfig() {
            return DeviceConfigInterface.REAL;
        }
    }
}
