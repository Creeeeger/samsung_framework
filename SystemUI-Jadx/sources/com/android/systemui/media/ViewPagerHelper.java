package com.android.systemui.media;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.android.systemui.R;
import java.util.HashMap;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.IntSupplier;
import java.util.function.Supplier;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewPagerHelper {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final BiFunction getNumberOfPlayersFunction;
    public final IntSupplier isRTLSupplier;
    public final Supplier mediaFramesSupplier;
    public final Function mediaPlayerDataFunction;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public ViewPagerHelper(BiFunction<Boolean, MediaType, Integer> biFunction, IntSupplier intSupplier, Supplier<HashMap<MediaType, View>> supplier, Function<MediaType, SecMediaPlayerData> function) {
        this.getNumberOfPlayersFunction = biFunction;
        this.isRTLSupplier = intSupplier;
        this.mediaFramesSupplier = supplier;
        this.mediaPlayerDataFunction = function;
    }

    public final int getCurrentPage(MediaType mediaType) {
        boolean z;
        int currentItem;
        ViewPager viewPager = getViewPager(mediaType);
        if (viewPager == null) {
            return 1;
        }
        if (this.isRTLSupplier.getAsInt() == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            currentItem = (getPlayersCount(mediaType) - 1) - viewPager.getCurrentItem();
        } else {
            currentItem = viewPager.getCurrentItem();
        }
        return currentItem;
    }

    public final int getPlayersCount(MediaType mediaType) {
        return ((Number) this.getNumberOfPlayersFunction.apply(Boolean.FALSE, mediaType)).intValue();
    }

    public final ViewPager getViewPager(MediaType mediaType) {
        View view;
        HashMap hashMap = (HashMap) this.mediaFramesSupplier.get();
        if (hashMap.isEmpty() || (view = (View) hashMap.get(mediaType)) == null) {
            return null;
        }
        return (ViewPager) view.findViewById(R.id.sec_media_carousel_view_pager);
    }

    public final void setCurrentPage(int i, boolean z, MediaType mediaType) {
        boolean z2;
        IntSupplier intSupplier = this.isRTLSupplier;
        boolean z3 = false;
        if (intSupplier.getAsInt() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            i = (getPlayersCount(mediaType) - 1) - i;
        }
        if (i >= 1 && i < getPlayersCount(mediaType) - 1) {
            ViewPager viewPager = getViewPager(mediaType);
            if (viewPager != null) {
                viewPager.setCurrentItem(i, z);
                return;
            }
            return;
        }
        if (intSupplier.getAsInt() == 1) {
            z3 = true;
        }
        if (z3) {
            ViewPager viewPager2 = getViewPager(mediaType);
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(getPlayersCount(mediaType) - 2, z);
                return;
            }
            return;
        }
        ViewPager viewPager3 = getViewPager(mediaType);
        if (viewPager3 != null) {
            viewPager3.setCurrentItem(1, z);
        }
    }
}
