package com.sec.internal.ims.servicemodules.csh.event;

import com.sec.ims.util.ImsUri;
import java.util.Observable;

/* loaded from: classes.dex */
public class CshInfo extends Observable {
    public long timeStamp;
    public long shareId = 0;
    public int shareDirection = 0;
    public int shareType = 0;
    public long dataSize = 0;
    public int shareState = 0;
    public long dataProgress = 0;
    public int videoHeight = 0;
    public int videoWidth = 0;
    public ImsUri shareContactUri = ImsUri.EMPTY;
    public String dataPath = "";
    public String mimeType = "";
    public int reasonCode = 0;

    public String toString() {
        return "id: " + this.shareId + " type: " + this.shareType;
    }
}
