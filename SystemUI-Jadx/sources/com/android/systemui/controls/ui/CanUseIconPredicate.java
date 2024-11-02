package com.android.systemui.controls.ui;

import android.content.ContentProvider;
import android.graphics.drawable.Icon;
import android.net.Uri;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CanUseIconPredicate implements Function1 {
    public final int currentUserId;

    public CanUseIconPredicate(int i) {
        this.currentUserId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z;
        Icon icon = (Icon) obj;
        if (icon.getType() == 4 || icon.getType() == 6) {
            Uri uri = icon.getUri();
            int i = this.currentUserId;
            if (ContentProvider.getUserIdFromUri(uri, i) != i) {
                z = false;
                return Boolean.valueOf(z);
            }
        }
        z = true;
        return Boolean.valueOf(z);
    }
}
