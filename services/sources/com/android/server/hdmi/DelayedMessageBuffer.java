package com.android.server.hdmi;

import android.hardware.hdmi.HdmiDeviceInfo;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class DelayedMessageBuffer {
    public final ArrayList mBuffer = new ArrayList();
    public final HdmiCecLocalDevice mDevice;

    public DelayedMessageBuffer(HdmiCecLocalDevice hdmiCecLocalDevice) {
        this.mDevice = hdmiCecLocalDevice;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void add(com.android.server.hdmi.HdmiCecMessage r4) {
        /*
            r3 = this;
            int r0 = r4.getOpcode()
            r1 = 114(0x72, float:1.6E-43)
            r2 = 0
            if (r0 == r1) goto L1c
            r1 = 130(0x82, float:1.82E-43)
            if (r0 == r1) goto L13
            r1 = 192(0xc0, float:2.69E-43)
            if (r0 == r1) goto L1c
            r3 = r2
            goto L22
        L13:
            r3.removeActiveSource()
            java.util.ArrayList r3 = r3.mBuffer
            r3.add(r4)
            goto L21
        L1c:
            java.util.ArrayList r3 = r3.mBuffer
            r3.add(r4)
        L21:
            r3 = 1
        L22:
            if (r3 == 0) goto L3a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r0 = "Buffering message:"
            r3.append(r0)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.lang.Object[] r4 = new java.lang.Object[r2]
            com.android.server.hdmi.HdmiLogger.debug(r3, r4)
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.hdmi.DelayedMessageBuffer.add(com.android.server.hdmi.HdmiCecMessage):void");
    }

    public void removeActiveSource() {
        Iterator it = this.mBuffer.iterator();
        while (it.hasNext()) {
            if (((HdmiCecMessage) it.next()).getOpcode() == 130) {
                it.remove();
            }
        }
    }

    public boolean isBuffered(int i) {
        Iterator it = this.mBuffer.iterator();
        while (it.hasNext()) {
            if (((HdmiCecMessage) it.next()).getOpcode() == i) {
                return true;
            }
        }
        return false;
    }

    public void processAllMessages() {
        ArrayList arrayList = new ArrayList(this.mBuffer);
        this.mBuffer.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            HdmiCecMessage hdmiCecMessage = (HdmiCecMessage) it.next();
            this.mDevice.onMessage(hdmiCecMessage);
            HdmiLogger.debug("Processing message:" + hdmiCecMessage, new Object[0]);
        }
    }

    public void processMessagesForDevice(int i) {
        ArrayList arrayList = new ArrayList(this.mBuffer);
        this.mBuffer.clear();
        HdmiLogger.debug("Checking message for address:" + i, new Object[0]);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            HdmiCecMessage hdmiCecMessage = (HdmiCecMessage) it.next();
            if (hdmiCecMessage.getSource() != i) {
                this.mBuffer.add(hdmiCecMessage);
            } else if (hdmiCecMessage.getOpcode() == 130 && !this.mDevice.isInputReady(HdmiDeviceInfo.idForCecDevice(i))) {
                this.mBuffer.add(hdmiCecMessage);
            } else {
                this.mDevice.onMessage(hdmiCecMessage);
                HdmiLogger.debug("Processing message:" + hdmiCecMessage, new Object[0]);
            }
        }
    }

    public void processActiveSource(int i) {
        ArrayList arrayList = new ArrayList(this.mBuffer);
        this.mBuffer.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            HdmiCecMessage hdmiCecMessage = (HdmiCecMessage) it.next();
            if (hdmiCecMessage.getOpcode() == 130 && hdmiCecMessage.getSource() == i) {
                this.mDevice.onMessage(hdmiCecMessage);
                HdmiLogger.debug("Processing message:" + hdmiCecMessage, new Object[0]);
            } else {
                this.mBuffer.add(hdmiCecMessage);
            }
        }
    }
}
