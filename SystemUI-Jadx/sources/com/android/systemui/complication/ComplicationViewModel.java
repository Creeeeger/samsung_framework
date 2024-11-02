package com.android.systemui.complication;

import androidx.lifecycle.ViewModel;
import com.android.systemui.complication.Complication;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComplicationViewModel extends ViewModel {
    public final ComplicationId mId;

    public ComplicationViewModel(Complication complication, ComplicationId complicationId, Complication.Host host) {
        this.mId = complicationId;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mId);
        sb.append("=");
        throw null;
    }
}
