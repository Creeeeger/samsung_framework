package com.android.systemui.screenshot;

import android.graphics.Region;
import android.os.Handler;
import com.android.internal.util.CallbackRegistry;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImageTileSet {
    public CallbackRegistry mContentListeners;
    public final List mTiles = new ArrayList();
    public final Region mRegion = new Region();

    public ImageTileSet(Handler handler) {
    }

    public final int getHeight() {
        return this.mRegion.getBounds().height();
    }

    public final int getWidth() {
        return this.mRegion.getBounds().width();
    }
}
