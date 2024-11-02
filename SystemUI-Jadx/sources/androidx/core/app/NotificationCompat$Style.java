package androidx.core.app;

import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class NotificationCompat$Style {
    public CharSequence mBigContentTitle;
    public NotificationCompat$Builder mBuilder;
    public CharSequence mSummaryText;
    public boolean mSummaryTextSet = false;

    public void addCompatExtras(Bundle bundle) {
        if (this.mSummaryTextSet) {
            bundle.putCharSequence("android.summaryText", this.mSummaryText);
        }
        CharSequence charSequence = this.mBigContentTitle;
        if (charSequence != null) {
            bundle.putCharSequence("android.title.big", charSequence);
        }
        String className = getClassName();
        if (className != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", className);
        }
    }

    public void clearCompatExtraKeys(Bundle bundle) {
        bundle.remove("android.summaryText");
        bundle.remove("android.title.big");
        bundle.remove("androidx.core.app.extra.COMPAT_TEMPLATE");
    }

    public String getClassName() {
        return null;
    }

    public void restoreFromCompatExtras(Bundle bundle) {
        if (bundle.containsKey("android.summaryText")) {
            this.mSummaryText = bundle.getCharSequence("android.summaryText");
            this.mSummaryTextSet = true;
        }
        this.mBigContentTitle = bundle.getCharSequence("android.title.big");
    }

    public final void setBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        if (this.mBuilder != notificationCompat$Builder) {
            this.mBuilder = notificationCompat$Builder;
            if (notificationCompat$Builder != null) {
                notificationCompat$Builder.setStyle(this);
            }
        }
    }

    public void apply(NotificationCompatBuilder notificationCompatBuilder) {
    }

    public void makeBigContentView() {
    }

    public void makeContentView() {
    }

    public void makeHeadsUpContentView() {
    }
}
