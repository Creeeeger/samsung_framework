package com.samsung.android.hardware.secinputdev;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.hardware.secinputdev.SemInputConstants;
import com.samsung.android.hardware.secinputdev.external.SemInputExternal;
import com.samsung.android.hardware.secinputdev.hal.SysinputHALCallback;
import com.samsung.android.hardware.secinputdev.hal.SysinputHALInterface;
import java.io.PrintWriter;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SemInputDeviceMotionHelper {
    private static final String TAG = "SemInputMotionHelper";
    private final HashMap<SemInputConstants.Device, Boolean> checkTables;
    private SemInputCommandInterface commandOperator;
    private SemInputExternal.IExternalEventRegister externalEventRegister;
    private final Handler mainHandler;
    private final HashMap<SemInputConstants.Device, SemInputDeviceRawdataService> rawdataServices = new HashMap<>();
    private final HashMap<SemInputConstants.Device, SemInputMotionController> motionControllers = new HashMap<>();

    public SemInputDeviceMotionHelper(Handler mainHandler, SemInputExternal.IExternalEventRegister externalRegister, SemInputCommandInterface commandOperator) {
        HashMap<SemInputConstants.Device, Boolean> hashMap = new HashMap<>();
        this.checkTables = hashMap;
        this.externalEventRegister = null;
        this.commandOperator = null;
        this.mainHandler = mainHandler;
        this.externalEventRegister = externalRegister;
        this.commandOperator = commandOperator;
        hashMap.put(SemInputConstants.Device.DEFAULT_TSP, false);
        if (!SemInputFeatures.IS_WEAROS) {
            hashMap.put(SemInputConstants.Device.EXTRA_TSP, false);
        }
    }

    public void registerRawdataService(SemInputConstants.Device device, Context context, SysinputHALInterface sysinputHAL, int feature) {
        boolean isChecked = this.checkTables.get(device).booleanValue();
        if (!isChecked) {
            int devid = device.toInt();
            SemInputDeviceRawdataService rawdataService = new SemInputDeviceRawdataService(context, sysinputHAL, devid);
            if (!rawdataService.isSupport()) {
                this.checkTables.put(device, true);
                Log.i(TAG, "registerRawdataService: RawdataService not support for " + device);
                return;
            }
            SysinputHALCallback.setRawdataService(devid, rawdataService);
            this.rawdataServices.put(device, rawdataService);
            SemInputMotionController motionController = new SemInputMotionController(context, devid, this.commandOperator);
            motionController.setExternalEventRegister(this.externalEventRegister);
            motionController.setRawdataService(rawdataService);
            motionController.prepare(feature);
            if (!motionController.isSupport()) {
                this.checkTables.put(device, true);
                Log.i(TAG, "registerRawdataService: MotionController not support for " + device);
            } else {
                rawdataService.setMotionController(motionController);
                this.checkTables.put(device, true);
                this.motionControllers.put(device, motionController);
                Log.i(TAG, "registerRawdataService: " + device + " done");
            }
        }
    }

    /* renamed from: com.samsung.android.hardware.secinputdev.SemInputDeviceMotionHelper$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$hardware$secinputdev$SemInputConstants$MotionType;

        static {
            int[] iArr = new int[SemInputConstants.MotionType.values().length];
            $SwitchMap$com$samsung$android$hardware$secinputdev$SemInputConstants$MotionType = iArr;
            try {
                iArr[SemInputConstants.MotionType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$hardware$secinputdev$SemInputConstants$MotionType[SemInputConstants.MotionType.CALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$android$hardware$secinputdev$SemInputConstants$MotionType[SemInputConstants.MotionType.APD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public boolean registerListener(IBinder binder, SemInputConstants.MotionType motionType, String client) {
        boolean result = false;
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$hardware$secinputdev$SemInputConstants$MotionType[motionType.ordinal()]) {
            case 1:
            case 2:
                for (SemInputDeviceRawdataService rawdataService : this.rawdataServices.values()) {
                    result |= rawdataService.registerCallback(binder, client);
                }
                if (!result) {
                    Log.i(TAG, "registerListener(CALLBACK): maybe not supported or not yet enabled");
                }
                return result;
            case 3:
                for (SemInputMotionController motionController : this.motionControllers.values()) {
                    result |= motionController.enableMotion(motionType, client, binder);
                }
                if (!result) {
                    Log.i(TAG, "registerListener(APD): maybe not supported or not yet enabled");
                }
                return result;
            default:
                Log.e(TAG, "registerListener: not defined type #" + motionType);
                return false;
        }
    }

    public boolean unregisterListener(IBinder binder, SemInputConstants.MotionType motionType, String client) {
        boolean result = false;
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$hardware$secinputdev$SemInputConstants$MotionType[motionType.ordinal()]) {
            case 1:
            case 2:
                for (SemInputDeviceRawdataService rawdataService : this.rawdataServices.values()) {
                    result |= rawdataService.unregisterCallback(binder, client);
                }
                if (!result) {
                    Log.i(TAG, "unregisterListener(CALLBACK): maybe not supported or not yet enabled");
                }
                return result;
            case 3:
                for (SemInputMotionController motionController : this.motionControllers.values()) {
                    result |= motionController.disableMotion(motionType, client, binder);
                }
                if (!result) {
                    Log.i(TAG, "unregisterListener(APD): maybe not supported or not yet enabled");
                }
                return result;
            default:
                Log.e(TAG, "unregisterListener: not defined type #" + motionType);
                return false;
        }
    }

    public int enableMotion(SemInputConstants.MotionType motionType, boolean enable, String client) {
        boolean ret = false;
        for (SemInputMotionController motionController : this.motionControllers.values()) {
            if (enable) {
                ret = motionController.enableMotion(motionType, client);
            } else {
                ret = motionController.disableMotion(motionType, client);
            }
        }
        int retval = ret ? 0 : -3;
        Log.i(TAG, "enableMotion: " + motionType + ", client=" + client + ", ret=" + retval);
        return retval;
    }

    public int isEnableMotion(SemInputConstants.MotionType motionType, String client) {
        int retval = -1;
        for (SemInputMotionController motionController : this.motionControllers.values()) {
            if (retval < 0) {
                retval = 0;
            }
            retval |= motionController.isEnableMotion(motionType);
        }
        Log.i(TAG, "isEnableMotion: " + motionType + ", client=" + client + ", ret=" + retval);
        return retval;
    }

    public int setMotionControl(String subtype, int control, String client) {
        int retval = -1;
        for (SemInputMotionController motionController : this.motionControllers.values()) {
            int result = motionController.setMotionControl(subtype, control);
            if (result != -1) {
                retval = result;
            }
        }
        Log.i(TAG, "setMotionControl: " + subtype + ": " + control + ", client=" + client + ", ret=" + retval);
        return retval;
    }

    public int getMotionControl(String subtype, String client) {
        for (SemInputMotionController motionController : this.motionControllers.values()) {
            int value = motionController.getMotionControl(subtype);
            if (value != -3) {
                Log.i(TAG, "getMotionControl: " + subtype + ", client=" + client + ", ret=" + value);
                return value;
            }
        }
        Log.i(TAG, "getMotionControl: maybe not supported or not yet enabled");
        return -1;
    }

    public void forcePause() {
        for (SemInputDeviceRawdataService rawdataService : this.rawdataServices.values()) {
            rawdataService.pauseService();
        }
    }

    public void pause(SemInputConstants.Device device, boolean useHandler) {
        final SemInputDeviceRawdataService rawdataService = this.rawdataServices.get(device);
        if (rawdataService != null) {
            if (useHandler) {
                this.mainHandler.post(new Runnable() { // from class: com.samsung.android.hardware.secinputdev.SemInputDeviceMotionHelper$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SemInputDeviceRawdataService.this.pauseService();
                    }
                });
            } else {
                rawdataService.pauseService();
            }
        }
    }

    public void restart(SemInputConstants.Device device, boolean useHandler) {
        final SemInputDeviceRawdataService rawdataService = this.rawdataServices.get(device);
        if (rawdataService != null) {
            if (useHandler) {
                this.mainHandler.post(new Runnable() { // from class: com.samsung.android.hardware.secinputdev.SemInputDeviceMotionHelper$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SemInputDeviceRawdataService.this.restartService();
                    }
                });
            } else {
                rawdataService.restartService();
            }
        }
    }

    public void onShutdown() {
        for (SemInputDeviceRawdataService rawdataService : this.rawdataServices.values()) {
            rawdataService.destroy();
        }
    }

    public void dump(PrintWriter pw) {
        for (SemInputDeviceRawdataService rawdataService : this.rawdataServices.values()) {
            pw.println("");
            rawdataService.dump(pw);
        }
    }

    public void dumpEvents(PrintWriter pw) {
        for (SemInputMotionController motionController : this.motionControllers.values()) {
            pw.println("");
            motionController.dumpEvents(pw);
        }
    }
}
