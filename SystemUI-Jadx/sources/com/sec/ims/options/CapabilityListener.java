package com.sec.ims.options;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.sec.ims.options.ICapabilityServiceEventListener;
import com.sec.ims.util.ImsUri;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class CapabilityListener {
    private static final boolean DBG = false;
    private static final String LOG_TAG = "CapabilityListener";
    protected String mToken;
    private final int EVT_OWN_CAP_CHANGED = 1;
    private final int EVT_MULTIPLE_CAP_CHANGED = 2;
    private final int EVT_CAP_CHANGED = 3;
    private final int EVT_CAP_PUBLISHED = 4;
    ICapabilityServiceEventListener callback = new ICapabilityServiceEventListener.Stub() { // from class: com.sec.ims.options.CapabilityListener.1
        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onCapabilitiesChanged(List<ImsUri> list, Capabilities capabilities) {
            Message.obtain(CapabilityListener.this.mHandler, 3, new Pair(list.get(0), capabilities)).sendToTarget();
        }

        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onCapabilityAndAvailabilityPublished(int i) {
            Message.obtain(CapabilityListener.this.mHandler, 4, i, -1).sendToTarget();
        }

        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onMultipleCapabilitiesChanged(List<ImsUri> list, List<Capabilities> list2) {
            Message.obtain(CapabilityListener.this.mHandler, 2, new Pair(list, list2)).sendToTarget();
        }

        @Override // com.sec.ims.options.ICapabilityServiceEventListener
        public void onOwnCapabilitiesChanged() {
            Message.obtain(CapabilityListener.this.mHandler, 1, null).sendToTarget();
        }
    };
    Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.sec.ims.options.CapabilityListener.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            CapabilityListener.this.onCapabilityAndAvailabilityPublished(message.arg1);
                            return;
                        }
                        return;
                    } else {
                        Pair pair = (Pair) message.obj;
                        CapabilityListener.this.onCapabilitiesChanged((ImsUri) pair.first, (Capabilities) pair.second);
                        return;
                    }
                }
                Pair pair2 = (Pair) message.obj;
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < ((List) pair2.first).size(); i2++) {
                    arrayList.add(new Pair((ImsUri) ((List) pair2.first).get(i2), (Capabilities) ((List) pair2.second).get(i2)));
                }
                CapabilityListener.this.onMultipleCapabilitiesChanged(arrayList);
                return;
            }
            Log.i(CapabilityListener.LOG_TAG, "onOwnCapabilitiesChanged: listener = " + CapabilityListener.this);
            CapabilityListener.this.onOwnCapabilitiesChanged();
        }
    };

    public void onOwnCapabilitiesChanged() {
    }

    public void onCapabilityAndAvailabilityPublished(int i) {
    }

    public void onMultipleCapabilitiesChanged(List<Pair<ImsUri, Capabilities>> list) {
    }

    public void onCapabilitiesChanged(ImsUri imsUri, Capabilities capabilities) {
    }
}
