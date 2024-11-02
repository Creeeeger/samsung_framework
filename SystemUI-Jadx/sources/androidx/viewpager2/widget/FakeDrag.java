package androidx.viewpager2.widget;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FakeDrag {
    public final ScrollEventAdapter mScrollEventAdapter;

    public FakeDrag(ViewPager2 viewPager2, ScrollEventAdapter scrollEventAdapter, RecyclerView recyclerView) {
        this.mScrollEventAdapter = scrollEventAdapter;
    }
}
