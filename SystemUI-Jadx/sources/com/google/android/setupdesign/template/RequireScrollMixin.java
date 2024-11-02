package com.google.android.setupdesign.template;

import android.os.Handler;
import android.os.Looper;
import com.google.android.setupcompat.internal.TemplateLayout;
import com.google.android.setupcompat.template.Mixin;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RequireScrollMixin implements Mixin {
    public final Handler handler = new Handler(Looper.getMainLooper());
    public boolean requiringScrollToBottom = false;
    public boolean everScrolledToBottom = false;

    public RequireScrollMixin(TemplateLayout templateLayout) {
    }

    public final void notifyScrollabilityChange(boolean z) {
        if (z == this.requiringScrollToBottom) {
            return;
        }
        Handler handler = this.handler;
        boolean z2 = true;
        if (z) {
            if (!this.everScrolledToBottom) {
                handler.post(new Runnable(z2) { // from class: com.google.android.setupdesign.template.RequireScrollMixin.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        RequireScrollMixin.this.getClass();
                    }
                });
                this.requiringScrollToBottom = true;
                return;
            }
            return;
        }
        handler.post(new Runnable(false) { // from class: com.google.android.setupdesign.template.RequireScrollMixin.5
            @Override // java.lang.Runnable
            public final void run() {
                RequireScrollMixin.this.getClass();
            }
        });
        this.requiringScrollToBottom = false;
        this.everScrolledToBottom = true;
    }
}
