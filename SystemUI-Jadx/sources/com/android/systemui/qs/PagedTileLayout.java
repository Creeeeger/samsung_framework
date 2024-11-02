package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Scroller;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.R;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.qs.SecQSPanel;
import com.android.systemui.qs.SecQSPanelControllerBase;
import com.android.systemui.qs.animator.QsExpandAnimator;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.util.SettingsHelper;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntSupplier;
import java.util.function.Supplier;
import kotlin.Lazy;
import kotlin.collections.CollectionsKt___CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class PagedTileLayout extends ViewPager implements SecQSPanel.QSTileLayout {
    public static final PagedTileLayout$$ExternalSyntheticLambda6 SCROLL_CUBIC = new PagedTileLayout$$ExternalSyntheticLambda6();
    public final AnonymousClass3 mAdapter;
    public boolean mDistributeTiles;
    public float mInitialX;
    public float mInitialY;
    public float mLastExpansion;
    public int mLastMaxHeight;
    public int mLayoutDirection;
    public int mLayoutOrientation;
    public boolean mListening;
    public QSLogger mLogger;
    public final int mMaxColumns;
    public final AnonymousClass2 mOnPageChangeListener;
    public SecPageIndicator mPageIndicator;
    public float mPageIndicatorPosition;
    public PageListener mPageListener;
    public int mPageToRestore;
    public final ArrayList mPages;
    public final Scroller mScroller;
    public final SecPagedTileLayout mSecPagedTileLayout;
    public final ArrayList mTiles;
    public final int mTouchSlop;
    public final UiEventLogger mUiEventLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qs.PagedTileLayout$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 extends PagerAdapter {
        public AnonymousClass3() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            PagedTileLayout pagedTileLayout = PagedTileLayout.this;
            pagedTileLayout.mLogger.d(Integer.valueOf(i), "Destantiating page at");
            viewGroup.removeView((View) obj);
            pagedTileLayout.updateListening();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final int getCount() {
            return PagedTileLayout.this.mPages.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final Object instantiateItem(ViewGroup viewGroup, int i) {
            PagedTileLayout pagedTileLayout = PagedTileLayout.this;
            pagedTileLayout.mLogger.d(Integer.valueOf(i), "Instantiating page at");
            if (pagedTileLayout.isLayoutRtl()) {
                i = (pagedTileLayout.mPages.size() - 1) - i;
            }
            ViewGroup viewGroup2 = (ViewGroup) pagedTileLayout.mPages.get(i);
            if (viewGroup2.getParent() != null) {
                viewGroup.removeView(viewGroup2);
            }
            viewGroup.addView(viewGroup2);
            pagedTileLayout.updateListening();
            return viewGroup2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final boolean isViewFromObject(View view, Object obj) {
            if (view == obj) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface PageListener {
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.qs.PagedTileLayout$2, androidx.viewpager.widget.ViewPager$OnPageChangeListener] */
    public PagedTileLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTiles = new ArrayList();
        this.mPages = new ArrayList();
        final int i = 0;
        this.mDistributeTiles = false;
        this.mPageToRestore = -1;
        QSEvents.INSTANCE.getClass();
        this.mUiEventLogger = QSEvents.qsUiEventsLogger;
        this.mMaxColumns = 100;
        this.mLastMaxHeight = -1;
        ?? r2 = new ViewPager.SimpleOnPageChangeListener() { // from class: com.android.systemui.qs.PagedTileLayout.2
            public int mCurrentScrollState = 0;
            public boolean mIsScrollJankTraceBegin = false;

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i2) {
                if (i2 != this.mCurrentScrollState && i2 == 0) {
                    InteractionJankMonitor.getInstance().end(6);
                    this.mIsScrollJankTraceBegin = false;
                }
                this.mCurrentScrollState = i2;
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrolled(float f, int i2, int i3) {
                boolean z = this.mIsScrollJankTraceBegin;
                boolean z2 = true;
                PagedTileLayout pagedTileLayout = PagedTileLayout.this;
                if (!z && this.mCurrentScrollState == 1) {
                    InteractionJankMonitor.getInstance().begin(pagedTileLayout, 6);
                    this.mIsScrollJankTraceBegin = true;
                }
                SecPageIndicator secPageIndicator = pagedTileLayout.mPageIndicator;
                if (secPageIndicator == null) {
                    return;
                }
                float f2 = i2 + f;
                pagedTileLayout.mPageIndicatorPosition = f2;
                secPageIndicator.setLocation(f2);
                if (pagedTileLayout.mPageListener != null) {
                    if (pagedTileLayout.isLayoutRtl()) {
                        i2 = (pagedTileLayout.mPages.size() - 1) - i2;
                    }
                    PageListener pageListener = pagedTileLayout.mPageListener;
                    if (i3 != 0 || i2 != 0) {
                        z2 = false;
                    }
                    QsExpandAnimator qsExpandAnimator = (QsExpandAnimator) pageListener;
                    if (!qsExpandAnimator.isThereNoView() && qsExpandAnimator.mOnFirstPage != z2) {
                        qsExpandAnimator.mOnFirstPage = z2;
                        if (!z2) {
                            qsExpandAnimator.clearAnimationState();
                        }
                    }
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i2) {
                PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                PagedTileLayout pagedTileLayout = PagedTileLayout.this;
                pagedTileLayout.updateSelected();
                if (pagedTileLayout.mPageIndicator != null && pagedTileLayout.mPageListener != null) {
                    boolean z = true;
                    if (pagedTileLayout.isLayoutRtl()) {
                        i2 = (pagedTileLayout.mPages.size() - 1) - i2;
                    }
                    PageListener pageListener = pagedTileLayout.mPageListener;
                    if (i2 != 0) {
                        z = false;
                    }
                    QsExpandAnimator qsExpandAnimator = (QsExpandAnimator) pageListener;
                    if (!qsExpandAnimator.isThereNoView() && qsExpandAnimator.mOnFirstPage != z) {
                        qsExpandAnimator.mOnFirstPage = z;
                        if (!z) {
                            qsExpandAnimator.clearAnimationState();
                        }
                    }
                }
            }
        };
        this.mOnPageChangeListener = r2;
        AnonymousClass3 anonymousClass3 = new AnonymousClass3();
        this.mAdapter = anonymousClass3;
        this.mScroller = new Scroller(context, SCROLL_CUBIC);
        setAdapter(anonymousClass3);
        super.mOnPageChangeListener = r2;
        setCurrentItem(0, false);
        this.mLayoutOrientation = getResources().getConfiguration().orientation;
        int layoutDirection = getLayoutDirection();
        this.mLayoutDirection = layoutDirection;
        final int i2 = 1;
        final int i3 = 2;
        this.mSecPagedTileLayout = new SecPagedTileLayout(layoutDirection, new Consumer(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda0
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        PagedTileLayout pagedTileLayout = this.f$0;
                        PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                        pagedTileLayout.getClass();
                        pagedTileLayout.mDistributeTiles = ((Boolean) obj).booleanValue();
                        return;
                    case 1:
                        this.f$0.setClipChildren(((Boolean) obj).booleanValue());
                        return;
                    default:
                        this.f$0.setClipToPadding(((Boolean) obj).booleanValue());
                        return;
                }
            }
        }, new BooleanSupplier() { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda1
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return PagedTileLayout.this.mDistributeTiles;
            }
        }, new Runnable(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda2
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        PagedTileLayout pagedTileLayout = this.f$0;
                        PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                        int size = pagedTileLayout.mTiles.size();
                        TileLayout tileLayout = (TileLayout) pagedTileLayout.mPages.get(0);
                        int max = Math.max(size / Math.max(tileLayout.mColumns * tileLayout.mRows, 1), 1);
                        TileLayout tileLayout2 = (TileLayout) pagedTileLayout.mPages.get(0);
                        if (size > Math.max(tileLayout2.mColumns * tileLayout2.mRows, 1) * max) {
                            max++;
                        }
                        int size2 = pagedTileLayout.mPages.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            ((TileLayout) pagedTileLayout.mPages.get(i4)).removeAllViews();
                        }
                        if (size2 != max) {
                            while (pagedTileLayout.mPages.size() < max) {
                                pagedTileLayout.mLogger.d("Adding new page");
                                pagedTileLayout.mPages.add(pagedTileLayout.createTileLayout());
                            }
                            while (pagedTileLayout.mPages.size() > max) {
                                pagedTileLayout.mLogger.d("Removing page");
                                pagedTileLayout.mPages.remove(r4.size() - 1);
                            }
                            SecPageIndicator secPageIndicator = pagedTileLayout.mPageIndicator;
                            if (secPageIndicator != null) {
                                secPageIndicator.setNumPages(pagedTileLayout.mPages.size());
                            }
                            pagedTileLayout.setAdapter(pagedTileLayout.mAdapter);
                            pagedTileLayout.mAdapter.notifyDataSetChanged();
                            if (pagedTileLayout.isLayoutRtl()) {
                                pagedTileLayout.mLogger.d("set 0 index in RTL");
                                pagedTileLayout.setCurrentItem(0, false);
                            }
                            QSLogger qSLogger = pagedTileLayout.mLogger;
                            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("pages count is changed (", size2, " -> ");
                            m.append(pagedTileLayout.mPages.size());
                            m.append(" ), pageRestore=");
                            m.append(pagedTileLayout.mPageToRestore);
                            qSLogger.d(m.toString());
                            int i5 = pagedTileLayout.mPageToRestore;
                            if (i5 != -1) {
                                pagedTileLayout.setCurrentItem(i5, false);
                                pagedTileLayout.mPageToRestore = -1;
                            }
                        }
                        TileLayout tileLayout3 = (TileLayout) pagedTileLayout.mPages.get(0);
                        int max2 = Math.max(tileLayout3.mColumns * tileLayout3.mRows, 1);
                        int size3 = pagedTileLayout.mTiles.size();
                        pagedTileLayout.mLogger.logTileDistributionInProgress(max2, size3);
                        int i6 = 0;
                        for (int i7 = 0; i7 < size3; i7++) {
                            SecQSPanelControllerBase.TileRecord tileRecord = (SecQSPanelControllerBase.TileRecord) pagedTileLayout.mTiles.get(i7);
                            if (((TileLayout) pagedTileLayout.mPages.get(i6)).mRecords.size() == max2) {
                                i6++;
                            }
                            pagedTileLayout.mLogger.logTileDistributed(i6, tileRecord.tile.getClass().getSimpleName());
                            ((TileLayout) pagedTileLayout.mPages.get(i6)).addTile(tileRecord);
                        }
                        return;
                    default:
                        this.f$0.requestLayout();
                        return;
                }
            }
        }, new IntSupplier(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda3
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.IntSupplier
            public final int getAsInt() {
                switch (i) {
                    case 0:
                        PagedTileLayout pagedTileLayout = this.f$0;
                        if (pagedTileLayout.mPages.size() == 0) {
                            return 0;
                        }
                        return ((TileLayout) pagedTileLayout.mPages.get(0)).mColumns;
                    default:
                        return this.f$0.mLastMaxHeight;
                }
            }
        }, new IntConsumer() { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda4
            @Override // java.util.function.IntConsumer
            public final void accept(int i4) {
                PagedTileLayout.this.mLastMaxHeight = i4;
            }
        }, new IntSupplier(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda3
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.IntSupplier
            public final int getAsInt() {
                switch (i2) {
                    case 0:
                        PagedTileLayout pagedTileLayout = this.f$0;
                        if (pagedTileLayout.mPages.size() == 0) {
                            return 0;
                        }
                        return ((TileLayout) pagedTileLayout.mPages.get(0)).mColumns;
                    default:
                        return this.f$0.mLastMaxHeight;
                }
            }
        }, new Supplier(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda5
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i) {
                    case 0:
                        return this.f$0.mPages;
                    default:
                        return this.f$0.mTiles;
                }
            }
        }, new Runnable(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda2
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        PagedTileLayout pagedTileLayout = this.f$0;
                        PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                        int size = pagedTileLayout.mTiles.size();
                        TileLayout tileLayout = (TileLayout) pagedTileLayout.mPages.get(0);
                        int max = Math.max(size / Math.max(tileLayout.mColumns * tileLayout.mRows, 1), 1);
                        TileLayout tileLayout2 = (TileLayout) pagedTileLayout.mPages.get(0);
                        if (size > Math.max(tileLayout2.mColumns * tileLayout2.mRows, 1) * max) {
                            max++;
                        }
                        int size2 = pagedTileLayout.mPages.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            ((TileLayout) pagedTileLayout.mPages.get(i4)).removeAllViews();
                        }
                        if (size2 != max) {
                            while (pagedTileLayout.mPages.size() < max) {
                                pagedTileLayout.mLogger.d("Adding new page");
                                pagedTileLayout.mPages.add(pagedTileLayout.createTileLayout());
                            }
                            while (pagedTileLayout.mPages.size() > max) {
                                pagedTileLayout.mLogger.d("Removing page");
                                pagedTileLayout.mPages.remove(r4.size() - 1);
                            }
                            SecPageIndicator secPageIndicator = pagedTileLayout.mPageIndicator;
                            if (secPageIndicator != null) {
                                secPageIndicator.setNumPages(pagedTileLayout.mPages.size());
                            }
                            pagedTileLayout.setAdapter(pagedTileLayout.mAdapter);
                            pagedTileLayout.mAdapter.notifyDataSetChanged();
                            if (pagedTileLayout.isLayoutRtl()) {
                                pagedTileLayout.mLogger.d("set 0 index in RTL");
                                pagedTileLayout.setCurrentItem(0, false);
                            }
                            QSLogger qSLogger = pagedTileLayout.mLogger;
                            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("pages count is changed (", size2, " -> ");
                            m.append(pagedTileLayout.mPages.size());
                            m.append(" ), pageRestore=");
                            m.append(pagedTileLayout.mPageToRestore);
                            qSLogger.d(m.toString());
                            int i5 = pagedTileLayout.mPageToRestore;
                            if (i5 != -1) {
                                pagedTileLayout.setCurrentItem(i5, false);
                                pagedTileLayout.mPageToRestore = -1;
                            }
                        }
                        TileLayout tileLayout3 = (TileLayout) pagedTileLayout.mPages.get(0);
                        int max2 = Math.max(tileLayout3.mColumns * tileLayout3.mRows, 1);
                        int size3 = pagedTileLayout.mTiles.size();
                        pagedTileLayout.mLogger.logTileDistributionInProgress(max2, size3);
                        int i6 = 0;
                        for (int i7 = 0; i7 < size3; i7++) {
                            SecQSPanelControllerBase.TileRecord tileRecord = (SecQSPanelControllerBase.TileRecord) pagedTileLayout.mTiles.get(i7);
                            if (((TileLayout) pagedTileLayout.mPages.get(i6)).mRecords.size() == max2) {
                                i6++;
                            }
                            pagedTileLayout.mLogger.logTileDistributed(i6, tileRecord.tile.getClass().getSimpleName());
                            ((TileLayout) pagedTileLayout.mPages.get(i6)).addTile(tileRecord);
                        }
                        return;
                    default:
                        this.f$0.requestLayout();
                        return;
                }
            }
        }, new Consumer(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda0
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        PagedTileLayout pagedTileLayout = this.f$0;
                        PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                        pagedTileLayout.getClass();
                        pagedTileLayout.mDistributeTiles = ((Boolean) obj).booleanValue();
                        return;
                    case 1:
                        this.f$0.setClipChildren(((Boolean) obj).booleanValue());
                        return;
                    default:
                        this.f$0.setClipToPadding(((Boolean) obj).booleanValue());
                        return;
                }
            }
        }, new Consumer(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda0
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        PagedTileLayout pagedTileLayout = this.f$0;
                        PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                        pagedTileLayout.getClass();
                        pagedTileLayout.mDistributeTiles = ((Boolean) obj).booleanValue();
                        return;
                    case 1:
                        this.f$0.setClipChildren(((Boolean) obj).booleanValue());
                        return;
                    default:
                        this.f$0.setClipToPadding(((Boolean) obj).booleanValue());
                        return;
                }
            }
        }, new Supplier(this) { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda5
            public final /* synthetic */ PagedTileLayout f$0;

            {
                this.f$0 = this;
            }

            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i2) {
                    case 0:
                        return this.f$0.mPages;
                    default:
                        return this.f$0.mTiles;
                }
            }
        });
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void addTile(SecQSPanelControllerBase.TileRecord tileRecord) {
        this.mTiles.add(tileRecord);
        this.mLogger.d("adding new tile", "forcing tile redistribution across pages, reason");
        this.mDistributeTiles = true;
        requestLayout();
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final void computeScroll() {
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            if (!this.mFakeDragging && !this.mIsBeingDragged) {
                this.mFakeDragging = true;
                setScrollState(1);
                this.mLastMotionX = 0.0f;
                this.mInitialMotionX = 0.0f;
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker == null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                } else {
                    velocityTracker.clear();
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
                this.mVelocityTracker.addMovement(obtain);
                obtain.recycle();
                this.mFakeDragBeginTime = uptimeMillis;
            }
            try {
                super.fakeDragBy(getScrollX() - this.mScroller.getCurrX());
                postInvalidateOnAnimation();
            } catch (NullPointerException e) {
                this.mLogger.logException("FakeDragBy called before begin", e);
                final int size = this.mPages.size() - 1;
                post(new Runnable() { // from class: com.android.systemui.qs.PagedTileLayout$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        PagedTileLayout pagedTileLayout = PagedTileLayout.this;
                        int i = size;
                        PagedTileLayout$$ExternalSyntheticLambda6 pagedTileLayout$$ExternalSyntheticLambda6 = PagedTileLayout.SCROLL_CUBIC;
                        pagedTileLayout.setCurrentItem(i, true);
                        pagedTileLayout.setOffscreenPageLimit(1);
                    }
                });
            }
        } else if (this.mFakeDragging) {
            try {
                super.endFakeDrag();
            } catch (NullPointerException e2) {
                this.mLogger.logException("endFakeDrag called without velocityTracker", e2);
            }
            setOffscreenPageLimit(1);
        }
        super.computeScroll();
    }

    public final TileLayout createTileLayout() {
        TileLayout tileLayout = (TileLayout) LayoutInflater.from(getContext()).inflate(R.layout.qs_paged_page, (ViewGroup) this, false);
        tileLayout.getClass();
        tileLayout.setMaxColumns();
        tileLayout.setSelected(false);
        return tileLayout;
    }

    public final int getCurrentPageNumber() {
        boolean isLayoutRtl = isLayoutRtl();
        int i = this.mCurItem;
        if (isLayoutRtl) {
            return (this.mPages.size() - 1) - i;
        }
        return i;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        SecPagedTileLayout secPagedTileLayout = this.mSecPagedTileLayout;
        ((KnoxStateMonitorImpl) secPagedTileLayout.knoxStateMonitor).registerCallback(secPagedTileLayout.knoxStateCallback);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int size = this.mPages.size();
        for (int i = 0; i < size; i++) {
            View view = (View) this.mPages.get(i);
            if (view.getParent() == null) {
                view.dispatchConfigurationChanged(configuration);
            }
        }
        int i2 = this.mLayoutOrientation;
        int i3 = configuration.orientation;
        if (i2 != i3) {
            this.mLayoutOrientation = i3;
            this.mLogger.d("orientation changed to " + this.mLayoutOrientation, "forcing tile redistribution across pages, reason");
            this.mDistributeTiles = true;
            setCurrentItem(0, false);
            this.mPageToRestore = 0;
        } else {
            this.mLogger.d(configuration, "Orientation didn't change, tiles might be not redistributed, new config");
        }
        SecPagedTileLayout secPagedTileLayout = this.mSecPagedTileLayout;
        int layoutDirection = configuration.getLayoutDirection();
        if (secPagedTileLayout.layoutDirection != layoutDirection) {
            secPagedTileLayout.layoutDirection = layoutDirection;
            Integer num = 0;
            setCurrentItem(num.intValue(), false);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SecPagedTileLayout secPagedTileLayout = this.mSecPagedTileLayout;
        ((KnoxStateMonitorImpl) secPagedTileLayout.knoxStateMonitor).removeCallback(secPagedTileLayout.knoxStateCallback);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mPages.add(createTileLayout());
        this.mAdapter.notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        AnonymousClass3 anonymousClass3 = this.mAdapter;
        if (anonymousClass3 != null && anonymousClass3.getCount() > 0) {
            accessibilityEvent.setItemCount(this.mAdapter.getCount());
            accessibilityEvent.setFromIndex(getCurrentPageNumber());
            accessibilityEvent.setToIndex(getCurrentPageNumber());
        }
    }

    public final void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (this.mCurItem != 0) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT);
        }
        if (this.mCurItem != this.mPages.size() - 1) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 2) {
                float abs = Math.abs(x - this.mInitialX);
                if (abs > Math.abs(y - this.mInitialY) && abs > this.mTouchSlop) {
                    return true;
                }
            }
        } else {
            this.mInitialX = x;
            this.mInitialY = y;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (((TileLayout) this.mPages.get(0)).getParent() == null) {
            ((TileLayout) this.mPages.get(0)).layout(i, i2, i3, i4);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        int size = this.mTiles.size();
        SecPagedTileLayout secPagedTileLayout = this.mSecPagedTileLayout;
        Context context = ((ViewGroup) this).mContext;
        boolean asBoolean = secPagedTileLayout.distributeTilesSupplier.getAsBoolean();
        boolean z4 = false;
        if (!asBoolean && secPagedTileLayout.lastMaxHeightSupplier.getAsInt() == secPagedTileLayout.pageHeight && secPagedTileLayout.lastMaxWidth == View.MeasureSpec.getSize(i)) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            secPagedTileLayout.lastMaxHeightConsumer.accept(secPagedTileLayout.pageHeight);
            secPagedTileLayout.lastMaxWidth = View.MeasureSpec.getSize(i);
            ArrayList<TileLayout> arrayList = (ArrayList) secPagedTileLayout.pagesSupplier.get();
            SecTileLayout secTileLayout = ((TileLayout) CollectionsKt___CollectionsKt.first((List) arrayList)).mSecTileLayout;
            IntSupplier intSupplier = secTileLayout.columnsSupplier;
            int asInt = intSupplier.getAsInt();
            Context context2 = (Context) secTileLayout.contextSupplier.get();
            Lazy lazy = secTileLayout.settingsHelper$delegate;
            boolean isEmergencyMode = ((SettingsHelper) lazy.getValue()).isEmergencyMode();
            IntConsumer intConsumer = secTileLayout.columnsConsumer;
            if (isEmergencyMode) {
                int integer = context2.getResources().getInteger(R.integer.sec_quick_settings_num_columns_power_saving);
                if (1 >= integer) {
                    integer = 1;
                }
                intConsumer.accept(integer);
            }
            secTileLayout.getResourcePicker();
            intConsumer.accept((View.MeasureSpec.getSize(i) - (((int) (SecQSPanelResourcePicker.getPanelWidth(context2) * 0.0192f)) * 2)) / secTileLayout.cellWidthSupplier.getAsInt());
            int qsTileColumn = secTileLayout.getResourcePicker().getQsTileColumn(context2);
            if (intSupplier.getAsInt() >= qsTileColumn && !((SettingsHelper) lazy.getValue()).isQSButtonGridPopupEnabled()) {
                intConsumer.accept(qsTileColumn);
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 && intSupplier.getAsInt() <= 1) {
                intConsumer.accept(1);
            }
            if (!((Boolean) secTileLayout.updateMaxRowsBiFunction.apply(0, Integer.valueOf(size))).booleanValue() && asInt == intSupplier.getAsInt()) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (z3 || asBoolean) {
                z4 = true;
            }
            if (z4) {
                secPagedTileLayout.distributeTilesConsumer.accept(Boolean.FALSE);
                secPagedTileLayout.distributeTilesRunnable.run();
            }
            int i3 = ((TileLayout) CollectionsKt___CollectionsKt.first((List) arrayList)).mRows;
            int i4 = ((TileLayout) CollectionsKt___CollectionsKt.first((List) arrayList)).mColumns;
            secPagedTileLayout.resourcePicker.getClass();
            int tileExpandedHeight = SecQSPanelResourcePicker.getTileExpandedHeight(context) * i3;
            for (TileLayout tileLayout : arrayList) {
                tileLayout.mRows = i3;
                tileLayout.mColumns = i4;
                tileLayout.mSecTileLayout.height = tileExpandedHeight;
            }
            secPagedTileLayout.pageHeight = tileExpandedHeight;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(secPagedTileLayout.pageHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        QSLogger qSLogger = this.mLogger;
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onRtlPropertiesChanged change=", i, ", Pages=");
        m.append(this.mPages.size());
        qSLogger.d(m.toString());
        if (this.mLayoutDirection != i) {
            this.mLayoutDirection = i;
            setAdapter(this.mAdapter);
            setCurrentItem(0, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001f, code lost:
    
        r5 = 4096;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean performAccessibilityAction(int r5, android.os.Bundle r6) {
        /*
            r4 = this;
            android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction r0 = android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT
            int r0 = r0.getId()
            android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction r1 = android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT
            int r1 = r1.getId()
            r2 = 8192(0x2000, float:1.14794E-41)
            r3 = 4096(0x1000, float:5.74E-42)
            if (r5 == r0) goto L14
            if (r5 != r1) goto L22
        L14:
            boolean r1 = r4.isLayoutRtl()
            if (r1 != 0) goto L1d
            if (r5 != r0) goto L1f
            goto L21
        L1d:
            if (r5 != r0) goto L21
        L1f:
            r5 = r3
            goto L22
        L21:
            r5 = r2
        L22:
            boolean r6 = super.performAccessibilityAction(r5, r6)
            if (r6 == 0) goto L2f
            if (r5 == r2) goto L2c
            if (r5 != r3) goto L2f
        L2c:
            r4.requestAccessibilityFocus()
        L2f:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.PagedTileLayout.performAccessibilityAction(int, android.os.Bundle):boolean");
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void removeTile(SecQSPanelControllerBase.TileRecord tileRecord) {
        if (this.mTiles.remove(tileRecord)) {
            this.mLogger.d("removing tile", "forcing tile redistribution across pages, reason");
            this.mDistributeTiles = true;
            requestLayout();
        }
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void restoreInstanceState(Bundle bundle) {
        this.mPageToRestore = bundle.getInt("current_page", -1);
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void saveInstanceState(Bundle bundle) {
        int i = this.mPageToRestore;
        if (i == -1) {
            i = getCurrentPageNumber();
        }
        bundle.putInt("current_page", i);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final void setCurrentItem(int i, boolean z) {
        if (isLayoutRtl()) {
            i = (this.mPages.size() - 1) - i;
        }
        super.setCurrentItem(i, z);
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void setExpansion(float f) {
        this.mLastExpansion = f;
        updateSelected();
        SecPageIndicator secPageIndicator = this.mPageIndicator;
        if (secPageIndicator != null) {
            secPageIndicator.mQsExpansion = f;
        }
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void setListening(boolean z, UiEventLogger uiEventLogger) {
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        updateListening();
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void setLogger(QSLogger qSLogger) {
        this.mLogger = qSLogger;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final void setPageMargin(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        int i2 = -i;
        marginLayoutParams.setMarginStart(i2);
        marginLayoutParams.setMarginEnd(i2);
        setLayoutParams(marginLayoutParams);
        int size = this.mPages.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = (View) this.mPages.get(i3);
            view.setPadding(i, view.getPaddingTop(), i, view.getPaddingBottom());
        }
    }

    public final void updateListening() {
        boolean z;
        Iterator it = this.mPages.iterator();
        while (it.hasNext()) {
            TileLayout tileLayout = (TileLayout) it.next();
            if (tileLayout.getParent() != null && this.mListening) {
                z = true;
            } else {
                z = false;
            }
            tileLayout.setListening(z, null);
        }
    }

    @Override // com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final boolean updateResources() {
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < this.mPages.size(); i++) {
            z2 |= ((TileLayout) this.mPages.get(i)).updateResources();
        }
        SecPagedTileLayout secPagedTileLayout = this.mSecPagedTileLayout;
        if (secPagedTileLayout.lastMaxHeightSupplier.getAsInt() != secPagedTileLayout.pageHeight) {
            z = true;
        }
        boolean z3 = z | z2;
        if (z3) {
            this.mLogger.d("resources in pages changed", "forcing tile redistribution across pages, reason");
            this.mDistributeTiles = true;
            requestLayout();
        } else {
            this.mLogger.d("resource in pages didn't change, tiles might be not redistributed");
        }
        return z3;
    }

    public final void updateSelected() {
        boolean z;
        boolean z2;
        float f = this.mLastExpansion;
        if (f > 0.0f && f < 1.0f) {
            return;
        }
        if (f == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        setImportantForAccessibility(4);
        int currentPageNumber = getCurrentPageNumber();
        for (int i = 0; i < this.mPages.size(); i++) {
            TileLayout tileLayout = (TileLayout) this.mPages.get(i);
            if (i == currentPageNumber) {
                z2 = z;
            } else {
                z2 = false;
            }
            tileLayout.setSelected(z2);
            if (tileLayout.isSelected()) {
                for (int i2 = 0; i2 < tileLayout.mRecords.size(); i2++) {
                    QSTile qSTile = ((SecQSPanelControllerBase.TileRecord) tileLayout.mRecords.get(i2)).tile;
                    this.mUiEventLogger.logWithInstanceId(QSEvent.QS_TILE_VISIBLE, 0, qSTile.getMetricsSpec(), qSTile.getInstanceId());
                }
            }
        }
        setImportantForAccessibility(0);
    }

    public final void updateTileWidth(float f) {
        SecPagedTileLayout secPagedTileLayout = this.mSecPagedTileLayout;
        Context context = ((ViewGroup) this).mContext;
        SecQSPanelResourcePicker secQSPanelResourcePicker = secPagedTileLayout.resourcePicker;
        secQSPanelResourcePicker.mTileExpandedWidthRatio = f;
        int tileExpandedWidth = secQSPanelResourcePicker.getTileExpandedWidth(context);
        secPagedTileLayout.cellWidth = tileExpandedWidth;
        Log.d("PagedTileLayout", "updateTileWidth(ratio:" + f + ") -> mCellWidth:" + tileExpandedWidth);
        ((TileLayout) ((ArrayList) secPagedTileLayout.pagesSupplier.get()).get(0)).mCellWidth = secPagedTileLayout.cellWidth;
        updateResources();
    }
}
