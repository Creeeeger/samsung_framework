package com.android.systemui.unfold.compat;

import android.content.Context;
import android.content.res.Configuration;
import com.android.systemui.unfold.updates.FoldProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ScreenSizeFoldProvider implements FoldProvider {
    public final List callbacks = new ArrayList();
    public boolean isFolded;

    public ScreenSizeFoldProvider(Context context) {
        onConfigurationChange(context.getResources().getConfiguration());
    }

    public final void onConfigurationChange(Configuration configuration) {
        boolean z;
        if (configuration.smallestScreenWidthDp < 600) {
            z = true;
        } else {
            z = false;
        }
        if (z == this.isFolded) {
            return;
        }
        this.isFolded = z;
        Iterator it = ((ArrayList) this.callbacks).iterator();
        while (it.hasNext()) {
            ((FoldProvider.FoldCallback) it.next()).onFoldUpdated(this.isFolded);
        }
    }

    @Override // com.android.systemui.unfold.updates.FoldProvider
    public final void registerCallback(FoldProvider.FoldCallback foldCallback, Executor executor) {
        this.callbacks.add(foldCallback);
        foldCallback.onFoldUpdated(this.isFolded);
    }
}
