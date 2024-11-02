package com.samsung.android.nexus.particle.emitter.texture;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.util.LruCache;
import com.android.systemui.edgelighting.plus.EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class BitmapCache {
    public static final LruCache mLruCache = new LruCache(QuickStepContract.SYSUI_STATE_BACK_DISABLED);
    public static int uid = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public abstract class BitmapLoader {
        public final String TAG = getClass().getSimpleName();
        public int id = -1;
        public final AtomicInteger retainCount = new AtomicInteger(0);

        public abstract Bitmap onLoad();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public final class DrawBitmapLoader extends BitmapLoader {
        public final BitmapDrawer mDrawer;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes3.dex */
        public interface BitmapDrawer {
        }

        public DrawBitmapLoader(BitmapDrawer bitmapDrawer) {
            if (bitmapDrawer != null) {
                this.mDrawer = bitmapDrawer;
                return;
            }
            throw new IllegalArgumentException("null drawer");
        }

        @Override // com.samsung.android.nexus.particle.emitter.texture.BitmapCache.BitmapLoader
        public final Bitmap onLoad() {
            return ((EdgeLightingPlusEffectView$$ExternalSyntheticLambda0) this.mDrawer).f$0;
        }

        public final String toString() {
            return "DrawBitmapLoader{id=" + this.id + ", mDrawer=" + this.mDrawer + '}';
        }
    }

    public static Bitmap loadToCache(Context context, BitmapLoader bitmapLoader) {
        Bitmap bitmap;
        try {
            bitmap = bitmapLoader.onLoad();
        } catch (Exception e) {
            Log.e(bitmapLoader.TAG, "load: ", e);
            bitmap = null;
        }
        if (bitmap == null) {
            Log.w("BitmapCache", "loadToCache: unable to load bitmap :" + bitmapLoader);
            return null;
        }
        mLruCache.put(Integer.valueOf(bitmapLoader.id), bitmap);
        return bitmap;
    }
}
