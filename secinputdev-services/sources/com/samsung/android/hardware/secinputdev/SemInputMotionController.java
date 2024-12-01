package com.samsung.android.hardware.secinputdev;

import android.content.Context;
import android.os.IBinder;
import android.util.Log;
import com.samsung.android.hardware.secinputdev.SemInputConstants;
import com.samsung.android.hardware.secinputdev.external.SemInputExternal;
import java.io.PrintWriter;
import java.util.ArrayList;

/* compiled from: SemInputMotionNoSupport.java */
/* loaded from: classes.dex */
class SemInputMotionController {
    private String TAG = "SemInputMotionController";

    public SemInputMotionController(Context context, int devid, SemInputCommandInterface commandOperator) {
        this.TAG += devid;
    }

    public void setRawdataService(SemInputDeviceRawdataService service) {
    }

    public void setExternalEventRegister(SemInputExternal.IExternalEventRegister iregister) {
    }

    public ArrayList<String> getMotionClients(SemInputConstants.MotionType motionType) {
        return null;
    }

    public boolean isSupport() {
        return false;
    }

    public void prepare(int feature) {
        Log.e(this.TAG, "prepare: not support");
    }

    public void destroy() {
    }

    public void restart() {
    }

    public void pause() {
    }

    public void deliveryInformation(String data) {
    }

    public void deliveryRawdata(int[] rawdata) {
    }

    public boolean enableMotion(SemInputConstants.MotionType motionType, String client) {
        return enableMotion(motionType, client, null);
    }

    public boolean enableMotion(SemInputConstants.MotionType motionType, String client, IBinder binder) {
        Log.i(this.TAG, "enableMotion: not support");
        return false;
    }

    public boolean disableMotion(SemInputConstants.MotionType motionType, String client) {
        return disableMotion(motionType, client, null);
    }

    public boolean disableMotion(SemInputConstants.MotionType motionType, String client, IBinder binder) {
        Log.i(this.TAG, "disableMotion: not support");
        return false;
    }

    public int isEnableMotion(SemInputConstants.MotionType motionType) {
        Log.i(this.TAG, "isEnableMotion: not support");
        return 0;
    }

    public int setMotionControl(String subtype, int control) {
        Log.i(this.TAG, "setMotionControl: not support");
        return -3;
    }

    public int getMotionControl(String subtype) {
        Log.i(this.TAG, "getMotionControl: not support");
        return -3;
    }

    public void dump(PrintWriter pw) {
        pw.println("dumping " + this.TAG);
        pw.println("Not Supported");
    }

    public void dumpEvents(PrintWriter pw) {
    }
}
