package com.sec.internal.ims.servicemodules.ss;

import java.util.List;

/* compiled from: UtConfigData.java */
/* loaded from: classes.dex */
class Condition {
    List<MEDIA> media;
    boolean state = true;
    int action = 1;
    int condition = -1;

    Condition() {
    }

    public String toString() {
        return " state = " + this.state + " action = " + this.action + " condition = " + this.condition + " media = " + this.media;
    }
}
