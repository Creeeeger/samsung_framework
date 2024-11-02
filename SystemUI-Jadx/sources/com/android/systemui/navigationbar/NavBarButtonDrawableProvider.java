package com.android.systemui.navigationbar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.systemui.BasicRune;
import com.android.systemui.navigationbar.buttons.KeyButtonDrawableProvider;
import com.android.systemui.navigationbar.gestural.GestureHintDrawable;
import com.samsung.systemui.splugins.navigationbar.IconResource;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarButtonDrawableProvider implements KeyButtonDrawableProvider {
    public static final Companion Companion = new Companion(null);
    public static volatile NavBarButtonDrawableProvider INSTANCE;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final GestureHintDrawable getGestureHintDrawable(Context context, IconResource iconResource, int i) {
        boolean z;
        GestureHintDrawable.Companion companion = GestureHintDrawable.Companion;
        Drawable drawable = iconResource.mLightDrawable;
        Drawable drawable2 = iconResource.mDarkDrawable;
        companion.getClass();
        if (drawable2 != null) {
            if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && context.getDisplayId() == 1) {
                z = false;
            } else {
                z = true;
            }
            if (z && (i == 1 || i == 3)) {
                drawable = GestureHintDrawable.Companion.rotateDrawable(context.getResources(), drawable, i);
                drawable2 = GestureHintDrawable.Companion.rotateDrawable(context.getResources(), drawable2, i);
            }
            return new GestureHintDrawable(new Drawable[]{drawable, drawable2});
        }
        return new GestureHintDrawable(new Drawable[]{drawable});
    }
}
