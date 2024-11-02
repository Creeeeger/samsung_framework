package com.android.systemui.qs.tiles.dialog;

import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.widget.ImageView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class InternetDialog$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyEvent.Callback f$0;
    public final /* synthetic */ Drawable f$1;

    public /* synthetic */ InternetDialog$$ExternalSyntheticLambda9(KeyEvent.Callback callback, Drawable drawable, int i) {
        this.$r8$classId = i;
        this.f$0 = callback;
        this.f$1 = drawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((ImageView) this.f$0).setImageDrawable(this.f$1);
                return;
            default:
                InternetDialog internetDialog = (InternetDialog) this.f$0;
                internetDialog.mSignalIcon.setImageDrawable(this.f$1);
                return;
        }
    }
}
