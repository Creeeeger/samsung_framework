package com.android.systemui.media;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.TransformingIndexedSequence;
import kotlin.sequences.TransformingIndexedSequence$iterator$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewPagerHelper$createPageAdapter$1 extends PagerAdapter {
    public final /* synthetic */ MediaType $type;
    public final /* synthetic */ ViewPagerHelper this$0;

    public ViewPagerHelper$createPageAdapter$1(MediaType mediaType, ViewPagerHelper viewPagerHelper) {
        this.$type = mediaType;
        this.this$0 = viewPagerHelper;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        int i = ViewPagerHelper.$r8$clinit;
        ViewPagerHelper viewPagerHelper = this.this$0;
        MediaType mediaType = this.$type;
        int playersCount = viewPagerHelper.getPlayersCount(mediaType);
        if (!mediaType.getSupportCarousel() && 1 <= playersCount) {
            return 1;
        }
        return playersCount;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getItemPosition(Object obj) {
        ArrayList sortedMediaPlayers;
        Object obj2;
        ViewPagerHelper viewPagerHelper = this.this$0;
        SecMediaPlayerData secMediaPlayerData = (SecMediaPlayerData) viewPagerHelper.mediaPlayerDataFunction.apply(this.$type);
        if (secMediaPlayerData != null && (sortedMediaPlayers = secMediaPlayerData.getSortedMediaPlayers()) != null) {
            TransformingIndexedSequence$iterator$1 transformingIndexedSequence$iterator$1 = new TransformingIndexedSequence$iterator$1(new TransformingIndexedSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(sortedMediaPlayers), new Function2() { // from class: com.android.systemui.media.ViewPagerHelper$createPageAdapter$1$getItemPosition$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    Integer valueOf = Integer.valueOf(((Number) obj3).intValue());
                    View view = ((SecMediaControlPanel) obj4).mViewHolder.playerView;
                    if (view == null) {
                        view = null;
                    }
                    return new Pair(valueOf, view);
                }
            }));
            while (true) {
                if (transformingIndexedSequence$iterator$1.hasNext()) {
                    obj2 = transformingIndexedSequence$iterator$1.next();
                    if (Intrinsics.areEqual(((Pair) obj2).getSecond(), obj)) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            Pair pair = (Pair) obj2;
            if (pair != null) {
                int intValue = ((Number) pair.getFirst()).intValue();
                int i = ViewPagerHelper.$r8$clinit;
                boolean z = true;
                if (viewPagerHelper.isRTLSupplier.getAsInt() != 1) {
                    z = false;
                }
                if (z) {
                    return (viewPagerHelper.getPlayersCount(r4) - 1) - intValue;
                }
                return intValue;
            }
        }
        return -2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
    
        if (r0 != null) goto L28;
     */
    @Override // androidx.viewpager.widget.PagerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object instantiateItem(android.view.ViewGroup r6, int r7) {
        /*
            r5 = this;
            int r0 = com.android.systemui.media.ViewPagerHelper.$r8$clinit
            com.android.systemui.media.ViewPagerHelper r0 = r5.this$0
            java.util.function.IntSupplier r1 = r0.isRTLSupplier
            int r1 = r1.getAsInt()
            r2 = 0
            r3 = 1
            if (r1 != r3) goto Lf
            goto L10
        Lf:
            r3 = r2
        L10:
            com.android.systemui.media.MediaType r1 = r5.$type
            if (r3 == 0) goto L1c
            int r3 = r0.getPlayersCount(r1)
            int r3 = r3 + (-1)
            int r7 = r3 - r7
        L1c:
            boolean r3 = r1.getSupportCarousel()
            r4 = 0
            if (r3 == 0) goto L6f
            java.util.function.Function r0 = r0.mediaPlayerDataFunction
            java.lang.Object r0 = r0.apply(r1)
            com.android.systemui.media.SecMediaPlayerData r0 = (com.android.systemui.media.SecMediaPlayerData) r0
            if (r0 == 0) goto L3e
            java.util.ArrayList r0 = r0.getSortedMediaPlayers()
            java.lang.Object r0 = r0.get(r7)
            com.android.systemui.media.SecMediaControlPanel r0 = (com.android.systemui.media.SecMediaControlPanel) r0
            com.android.systemui.media.SecPlayerViewHolder r0 = r0.mViewHolder
            android.view.View r0 = r0.playerView
            if (r0 == 0) goto L3e
            goto L3f
        L3e:
            r0 = r4
        L3f:
            if (r0 == 0) goto L6d
            android.view.ViewParent r1 = r0.getParent()
            if (r1 == 0) goto L89
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "- instantiateItem - parent: "
            r2.<init>(r3)
            r2.append(r1)
            java.lang.String r3 = ", container: "
            r2.append(r3)
            r2.append(r6)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "ViewPagerHelper"
            android.util.Log.d(r3, r2)
            r6.removeView(r0)
            if (r1 == r6) goto L89
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            r1.removeView(r0)
            goto L89
        L6d:
            r0 = r4
            goto L89
        L6f:
            java.util.function.Function r0 = r0.mediaPlayerDataFunction
            java.lang.Object r0 = r0.apply(r1)
            com.android.systemui.media.SecMediaPlayerData r0 = (com.android.systemui.media.SecMediaPlayerData) r0
            if (r0 == 0) goto L6d
            java.util.ArrayList r0 = r0.getSortedMediaPlayers()
            java.lang.Object r0 = r0.get(r2)
            com.android.systemui.media.SecMediaControlPanel r0 = (com.android.systemui.media.SecMediaControlPanel) r0
            com.android.systemui.media.SecPlayerViewHolder r0 = r0.mViewHolder
            android.view.View r0 = r0.playerView
            if (r0 == 0) goto L6d
        L89:
            r6.addView(r0)
            if (r0 == 0) goto L8f
            return r0
        L8f:
            super.instantiateItem(r6, r7)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.ViewPagerHelper$createPageAdapter$1.instantiateItem(android.view.ViewGroup, int):java.lang.Object");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        if (view == obj) {
            return true;
        }
        return false;
    }
}
