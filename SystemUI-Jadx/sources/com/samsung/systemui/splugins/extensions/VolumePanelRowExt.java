package com.samsung.systemui.splugins.extensions;

import android.content.Context;
import com.samsung.systemui.splugins.volume.VolumePanelRow;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class VolumePanelRowExt {
    public static final VolumePanelRowExt INSTANCE = new VolumePanelRowExt();

    private VolumePanelRowExt() {
    }

    private final String getStreamCommonLabel(VolumePanelRow volumePanelRow, Context context) {
        Object failure;
        try {
            int i = Result.$r8$clinit;
            failure = context.getString(context.getResources().getIdentifier(volumePanelRow.getNameRes(), null, null));
        } catch (Throwable th) {
            int i2 = Result.$r8$clinit;
            failure = new Result.Failure(th);
        }
        if (failure instanceof Result.Failure) {
            failure = "";
        }
        return (String) failure;
    }

    public static final String getStreamLabel(VolumePanelRow volumePanelRow, Context context) {
        boolean z;
        String streamCommonLabel = INSTANCE.getStreamCommonLabel(volumePanelRow, context);
        String remoteLabel = volumePanelRow.getRemoteLabel();
        if (remoteLabel.length() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            remoteLabel = null;
        }
        if (remoteLabel != null) {
            return ((Object) streamCommonLabel) + " (" + remoteLabel + ")";
        }
        return streamCommonLabel;
    }

    public static final String listToString(List<VolumePanelRow> list) {
        return CollectionsKt___CollectionsKt.joinToString$default(list, "| ", null, null, null, 62);
    }
}
