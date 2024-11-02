package androidx.slice.widget;

import android.content.Context;
import android.net.Uri;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SliceMetricsWrapper extends SliceMetrics {
    public final android.app.slice.SliceMetrics mSliceMetrics;

    public SliceMetricsWrapper(Context context, Uri uri) {
        this.mSliceMetrics = new android.app.slice.SliceMetrics(context, uri);
    }

    public final void logHidden() {
        this.mSliceMetrics.logHidden();
    }

    public final void logVisible() {
        this.mSliceMetrics.logVisible();
    }
}
