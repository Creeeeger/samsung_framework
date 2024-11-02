package com.samsung.android.desktopsystemui.sharedlib.system;

import android.app.AppGlobals;
import android.media.AudioManager;
import android.media.IVolumeController;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.sec.ims.presence.ServiceTuple;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class VolumeController {
    private static final int NO_VOLUME_CHANGED = 0;
    private static final String TAG = "[DSU]VolumeController ";
    public static final int VOLUME_CHANGED = 1;
    public static final int VOLUME_STAR_CHANGED = 2;
    public static final String VOLUME_STAR_ENABLED = "volume_star_enabled";
    private static final AudioManager mAudioManager = (AudioManager) AppGlobals.getInitialApplication().getSystemService(ServiceTuple.MEDIA_CAP_AUDIO);
    protected final VC mVolumeController = new VC();
    private ArrayList<IVolumeControllerCallback> mCallbacks = new ArrayList<>();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class VC extends IVolumeController.Stub {
        public final W mWorker;

        public void dismiss() {
            Log.d(VolumeController.TAG, "dismiss volume panel");
        }

        public void setA11yMode(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("setA11yMode", i, VolumeController.TAG);
            if (i != 100) {
                if (i != 101) {
                    return;
                }
                this.mWorker.removeMessages(2);
                this.mWorker.obtainMessage(2, Boolean.FALSE).sendToTarget();
                return;
            }
            this.mWorker.removeMessages(2);
            this.mWorker.obtainMessage(2, Boolean.TRUE).sendToTarget();
        }

        public void volumeChanged(int i, int i2) {
            Log.d(VolumeController.TAG, "Volume changed in VC");
            this.mWorker.removeMessages(1);
            this.mWorker.obtainMessage(1, i, i2).sendToTarget();
        }

        private VC() {
            this.mWorker = new W(Looper.getMainLooper());
        }

        public void displaySafeVolumeWarning(int i) {
        }

        public void masterMuteChanged(int i) {
        }

        public void setLayoutDirection(int i) {
        }

        public void displayVolumeLimiterToast() {
        }

        public void displayCsdWarning(int i, int i2) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class W extends Handler {
        public W(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1 && message.arg2 != 0) {
                Bundle bundle = new Bundle();
                Iterator it = VolumeController.this.mCallbacks.iterator();
                while (it.hasNext()) {
                    ((IVolumeControllerCallback) it.next()).volumeControllerCallback(1, bundle);
                }
                return;
            }
            if (i == 2) {
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean(VolumeController.VOLUME_STAR_ENABLED, ((Boolean) message.obj).booleanValue());
                Iterator it2 = VolumeController.this.mCallbacks.iterator();
                while (it2.hasNext()) {
                    ((IVolumeControllerCallback) it2.next()).volumeControllerCallback(2, bundle2);
                }
            }
        }
    }

    public void addCallback(IVolumeControllerCallback iVolumeControllerCallback) {
        this.mCallbacks.add(iVolumeControllerCallback);
    }

    public void notifyVisible(boolean z) {
        ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("visible ", z, TAG);
        mAudioManager.notifyVolumeControllerVisible(this.mVolumeController, z);
    }

    public void removeCallback(IVolumeControllerCallback iVolumeControllerCallback) {
        this.mCallbacks.remove(iVolumeControllerCallback);
    }

    public void setVolumeController() {
        try {
            Log.d(TAG, "Volume controller set");
            mAudioManager.setVolumeController(this.mVolumeController);
        } catch (SecurityException e) {
            Log.w(TAG, "Unable to set the volume controller", e);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface IVolumeControllerCallback {
        default void volumeControllerCallback(int i, Bundle bundle) {
        }
    }
}
