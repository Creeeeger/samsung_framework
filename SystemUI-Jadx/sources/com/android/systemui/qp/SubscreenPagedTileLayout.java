package com.android.systemui.qp;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.R;
import com.android.systemui.qs.PageIndicator;
import com.android.systemui.qs.QSPanel;
import com.android.systemui.qs.QSPanelControllerBase$TileRecord;
import com.android.systemui.qs.SecPageIndicator;
import com.android.systemui.qs.tileimpl.HeightOverrideable;
import com.android.systemui.qs.tileimpl.QSTileViewImpl;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubscreenPagedTileLayout extends ViewPager implements QSPanel.QSTileLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final AnonymousClass4 mAdapter;
    public boolean mDistributeTiles;
    public int mLastMaxHeight;
    public int mLastMaxWidth;
    public int mLayoutDirection;
    public boolean mListening;
    public final AnonymousClass3 mOnPageChangeListener;
    public int mPageHeight;
    public SecPageIndicator mPageIndicator;
    public float mPageIndicatorPosition;
    public int mPageToRestore;
    public final ArrayList mPages;
    public final ArrayList mTiles;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.qp.SubscreenPagedTileLayout$4, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass4 extends PagerAdapter {
        public AnonymousClass4() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("destroyItem ", i, "SubscreenPagedTileLayout");
            viewGroup.removeView((View) obj);
            int i2 = SubscreenPagedTileLayout.$r8$clinit;
            SubscreenPagedTileLayout.this.updateListening();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final int getCount() {
            return SubscreenPagedTileLayout.this.mPages.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final Object instantiateItem(ViewGroup viewGroup, int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("instantiateItem ", i, "SubscreenPagedTileLayout");
            SubscreenPagedTileLayout subscreenPagedTileLayout = SubscreenPagedTileLayout.this;
            if (subscreenPagedTileLayout.isLayoutRtl()) {
                i = (subscreenPagedTileLayout.mPages.size() - 1) - i;
            }
            ViewGroup viewGroup2 = (ViewGroup) subscreenPagedTileLayout.mPages.get(i);
            if (viewGroup2.getParent() != null) {
                viewGroup.removeView(viewGroup2);
            }
            viewGroup.addView(viewGroup2);
            subscreenPagedTileLayout.updateListening();
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

    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.viewpager.widget.ViewPager$OnPageChangeListener, com.android.systemui.qp.SubscreenPagedTileLayout$3] */
    public SubscreenPagedTileLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTiles = new ArrayList();
        this.mPages = new ArrayList();
        this.mDistributeTiles = false;
        this.mPageToRestore = -1;
        this.mLastMaxWidth = -1;
        this.mPageHeight = -1;
        this.mLastMaxHeight = -1;
        ?? r3 = new ViewPager.SimpleOnPageChangeListener() { // from class: com.android.systemui.qp.SubscreenPagedTileLayout.3
            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrolled(float f, int i, int i2) {
                SubscreenPagedTileLayout subscreenPagedTileLayout = SubscreenPagedTileLayout.this;
                SecPageIndicator secPageIndicator = subscreenPagedTileLayout.mPageIndicator;
                if (secPageIndicator == null) {
                    return;
                }
                float f2 = i + f;
                subscreenPagedTileLayout.mPageIndicatorPosition = f2;
                secPageIndicator.setLocation(f2);
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageScrollStateChanged(int i) {
            }

            @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public final void onPageSelected(int i) {
            }
        };
        this.mOnPageChangeListener = r3;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4();
        this.mAdapter = anonymousClass4;
        setAdapter(anonymousClass4);
        super.mOnPageChangeListener = r3;
        setCurrentItem(0, false);
        this.mLayoutDirection = getLayoutDirection();
    }

    @Override // com.android.systemui.qs.QSPanel.QSTileLayout
    public final void addTile(QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord) {
        this.mTiles.add(qSPanelControllerBase$TileRecord);
        this.mDistributeTiles = true;
        requestLayout();
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final int getCurrentItem() {
        int i = this.mCurItem;
        if (this.mAdapter != null && isLayoutRtl()) {
            return (this.mAdapter.getCount() - 1) - i;
        }
        return i;
    }

    @Override // com.android.systemui.qs.QSPanel.QSTileLayout
    public final int getTilesHeight() {
        SubscreenTileLayout subscreenTileLayout = (SubscreenTileLayout) this.mPages.get(0);
        if (subscreenTileLayout == null) {
            return 0;
        }
        return subscreenTileLayout.getTilesHeight();
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean isLayoutRtl() {
        if (this.mLayoutDirection == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Log.d("SubscreenPagedTileLayout", "onFinishInflate");
        ArrayList arrayList = this.mPages;
        SubscreenTileLayout subscreenTileLayout = (SubscreenTileLayout) LayoutInflater.from(getContext()).inflate(R.layout.qs_subscreen_paged_page, (ViewGroup) this, false);
        subscreenTileLayout.getClass();
        subscreenTileLayout.mColumns = 4;
        arrayList.add(subscreenTileLayout);
        this.mAdapter.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (((SubscreenTileLayout) this.mPages.get(0)).getParent() == null) {
            ((SubscreenTileLayout) this.mPages.get(0)).layout(i, i2, i3, i4);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        boolean z2;
        this.mTiles.size();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mPageHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("onMeasure, heightMeasureSpec: ", makeMeasureSpec, " mDistributeTiles: ");
        m.append(this.mDistributeTiles);
        m.append(" mLastMaxHeight: ");
        m.append(this.mLastMaxHeight);
        m.append(" mPageHeight: ");
        m.append(this.mPageHeight);
        m.append(" mLastMaxWidth: ");
        m.append(this.mLastMaxWidth);
        m.append(" MeasureSpec.getSize: ");
        m.append(View.MeasureSpec.getSize(i));
        Log.d("SubscreenPagedTileLayout", m.toString());
        if (this.mDistributeTiles || this.mLastMaxHeight != this.mPageHeight || this.mLastMaxWidth != View.MeasureSpec.getSize(i)) {
            SubscreenTileLayout subscreenTileLayout = (SubscreenTileLayout) this.mPages.get(0);
            int i3 = this.mPageHeight;
            subscreenTileLayout.mTileLayoutHeight = i3;
            this.mLastMaxHeight = i3;
            this.mLastMaxWidth = View.MeasureSpec.getSize(i);
            SubscreenTileLayout subscreenTileLayout2 = (SubscreenTileLayout) this.mPages.get(0);
            subscreenTileLayout2.getClass();
            int size = View.MeasureSpec.getSize(i);
            int i4 = subscreenTileLayout2.mColumns;
            int i5 = size / subscreenTileLayout2.mCellWidth;
            subscreenTileLayout2.mColumns = 4;
            StringBuilder m2 = GridLayoutManager$$ExternalSyntheticOutline0.m("updateMaxRowsAndColumns width: ", size, " availableWidth: ", size, " mColumns: ");
            m2.append(subscreenTileLayout2.mColumns);
            m2.append(" heightMeasureSpec: ");
            m2.append(View.MeasureSpec.getSize(makeMeasureSpec));
            Log.d("SubscreenTileLayout", m2.toString());
            int size2 = View.MeasureSpec.getSize(makeMeasureSpec);
            int i6 = subscreenTileLayout2.mRows;
            subscreenTileLayout2.mRows = size2 / (subscreenTileLayout2.mMaxCellHeight + 0);
            RecyclerView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateMaxRows before availableHeight: ", size2, " mRows: "), subscreenTileLayout2.mRows, "SubscreenTileLayout");
            subscreenTileLayout2.mRows = subscreenTileLayout2.mMaxAllowedRows;
            RecyclerView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateMaxRows After availableHeight: ", size2, " mRows: "), subscreenTileLayout2.mRows, "SubscreenTileLayout");
            if (i6 != subscreenTileLayout2.mRows) {
                z = true;
            } else {
                z = false;
            }
            if (!z && i4 == subscreenTileLayout2.mColumns) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z2 || this.mDistributeTiles) {
                this.mDistributeTiles = false;
                int size3 = this.mTiles.size();
                SubscreenTileLayout subscreenTileLayout3 = (SubscreenTileLayout) this.mPages.get(0);
                int max = Math.max(size3 / Math.max(subscreenTileLayout3.mColumns * subscreenTileLayout3.mRows, 1), 1);
                SubscreenTileLayout subscreenTileLayout4 = (SubscreenTileLayout) this.mPages.get(0);
                if (size3 > Math.max(subscreenTileLayout4.mColumns * subscreenTileLayout4.mRows, 1) * max) {
                    max++;
                }
                int size4 = this.mPages.size();
                for (int i7 = 0; i7 < size4; i7++) {
                    ((SubscreenTileLayout) this.mPages.get(i7)).removeAllViews();
                }
                if (size4 != max) {
                    while (this.mPages.size() < max) {
                        Log.d("SubscreenPagedTileLayout", "Adding page");
                        ArrayList arrayList = this.mPages;
                        SubscreenTileLayout subscreenTileLayout5 = (SubscreenTileLayout) LayoutInflater.from(getContext()).inflate(R.layout.qs_subscreen_paged_page, (ViewGroup) this, false);
                        subscreenTileLayout5.getClass();
                        subscreenTileLayout5.mColumns = 4;
                        arrayList.add(subscreenTileLayout5);
                    }
                    while (this.mPages.size() > max) {
                        Log.d("SubscreenPagedTileLayout", "Removing page");
                        ArrayList arrayList2 = this.mPages;
                        arrayList2.remove(arrayList2.size() - 1);
                    }
                    SecPageIndicator secPageIndicator = this.mPageIndicator;
                    if (secPageIndicator != null) {
                        secPageIndicator.setNumPages(this.mPages.size());
                    }
                    setAdapter(this.mAdapter);
                    this.mAdapter.notifyDataSetChanged();
                    if (isLayoutRtl()) {
                        setCurrentItem(0, false);
                    }
                    int i8 = this.mPageToRestore;
                    if (i8 != -1) {
                        setCurrentItem(i8, false);
                        this.mPageToRestore = -1;
                    }
                    StringBuilder m3 = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("pages count is changed (", size4, " -> ");
                    m3.append(this.mPages.size());
                    m3.append(" ), pageRestore=");
                    RecyclerView$$ExternalSyntheticOutline0.m(m3, this.mPageToRestore, "SubscreenPagedTileLayout");
                }
                SubscreenTileLayout subscreenTileLayout6 = (SubscreenTileLayout) this.mPages.get(0);
                int max2 = Math.max(subscreenTileLayout6.mColumns * subscreenTileLayout6.mRows, 1);
                Log.d("SubscreenPagedTileLayout", "Distributing tiles");
                int size5 = this.mTiles.size();
                int i9 = 0;
                for (int i10 = 0; i10 < size5; i10++) {
                    QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord = (QSPanelControllerBase$TileRecord) this.mTiles.get(i10);
                    if (((SubscreenTileLayout) this.mPages.get(i9)).mRecords.size() == max2) {
                        i9++;
                    }
                    Log.d("SubscreenPagedTileLayout", "Adding " + qSPanelControllerBase$TileRecord.tile.getClass().getSimpleName() + " to " + i9);
                    ((SubscreenTileLayout) this.mPages.get(i9)).addTile(qSPanelControllerBase$TileRecord);
                }
            }
            int i11 = ((SubscreenTileLayout) this.mPages.get(0)).mRows;
            int i12 = ((SubscreenTileLayout) this.mPages.get(0)).mColumns;
            SubscreenTileLayout subscreenTileLayout7 = (SubscreenTileLayout) this.mPages.get(0);
            int size6 = View.MeasureSpec.getSize(makeMeasureSpec);
            subscreenTileLayout7.mTileLayoutHeight = size6;
            for (int i13 = 0; i13 < this.mPages.size(); i13++) {
                SubscreenTileLayout subscreenTileLayout8 = (SubscreenTileLayout) this.mPages.get(i13);
                subscreenTileLayout8.mRows = i11;
                subscreenTileLayout8.mColumns = i12;
                subscreenTileLayout8.mTileLayoutHeight = size6;
            }
        }
        super.onMeasure(i, makeMeasureSpec);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.mLayoutDirection != i) {
            this.mLayoutDirection = i;
            setAdapter(this.mAdapter);
            setCurrentItem(0, false);
        }
    }

    @Override // com.android.systemui.qs.QSPanel.QSTileLayout
    public final void removeTile(QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord) {
        if (this.mTiles.remove(qSPanelControllerBase$TileRecord)) {
            this.mDistributeTiles = true;
            requestLayout();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public final void setCurrentItem(int i, boolean z) {
        if (isLayoutRtl()) {
            i = (this.mPages.size() - 1) - i;
        }
        super.setCurrentItem(i, z);
    }

    @Override // com.android.systemui.qs.QSPanel.QSTileLayout
    public final void setListening(boolean z, UiEventLogger uiEventLogger) {
        if (this.mListening == z) {
            return;
        }
        this.mListening = z;
        updateListening();
    }

    public final void setPageIndicator(PageIndicator pageIndicator) {
        ArrayList arrayList;
        SecPageIndicator secPageIndicator = (SecPageIndicator) pageIndicator;
        this.mPageIndicator = secPageIndicator;
        if (secPageIndicator != null && (arrayList = this.mPages) != null && arrayList.size() > 1) {
            ((RelativeLayout) this.mPageIndicator.getParent()).setVisibility(0);
            this.mPageIndicator.setNumPages(this.mPages.size());
            this.mPageIndicator.setLocation(this.mPageIndicatorPosition);
            Resources resources = ((ViewGroup) this).mContext.getResources();
            int color = resources.getColor(R.color.subscreen_page_indicator_tint_color_selected);
            int color2 = resources.getColor(R.color.subscreen_page_indicator_tint_color_unselected);
            SecPageIndicator secPageIndicator2 = this.mPageIndicator;
            secPageIndicator2.mSelectedColor = color;
            secPageIndicator2.mUnselectedColor = color2;
        }
    }

    public final void setSquishinessFraction() {
        boolean z;
        int size = this.mPages.size();
        for (int i = 0; i < size; i++) {
            SubscreenTileLayout subscreenTileLayout = (SubscreenTileLayout) this.mPages.get(i);
            if (Float.compare(subscreenTileLayout.mSquishinessFraction, 1.0f) != 0) {
                subscreenTileLayout.mSquishinessFraction = 1.0f;
                subscreenTileLayout.layoutTileRecords(subscreenTileLayout.mRecords.size(), false);
                Iterator it = subscreenTileLayout.mRecords.iterator();
                while (it.hasNext()) {
                    ViewParent viewParent = ((QSPanelControllerBase$TileRecord) it.next()).tileView;
                    if (viewParent instanceof HeightOverrideable) {
                        float f = subscreenTileLayout.mSquishinessFraction;
                        QSTileViewImpl qSTileViewImpl = (QSTileViewImpl) ((HeightOverrideable) viewParent);
                        if (qSTileViewImpl.squishinessFraction == f) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            qSTileViewImpl.squishinessFraction = f;
                            qSTileViewImpl.updateHeight();
                        }
                    }
                }
            }
        }
    }

    public final void updateListening() {
        boolean z;
        Iterator it = this.mPages.iterator();
        while (it.hasNext()) {
            SubscreenTileLayout subscreenTileLayout = (SubscreenTileLayout) it.next();
            if (subscreenTileLayout.getParent() != null && this.mListening) {
                z = true;
            } else {
                z = false;
            }
            subscreenTileLayout.setListening(z, null);
        }
    }

    @Override // com.android.systemui.qs.QSPanel.QSTileLayout
    public final boolean updateResources() {
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < this.mPages.size(); i++) {
            z2 |= ((SubscreenTileLayout) this.mPages.get(i)).updateResources();
        }
        if (this.mLastMaxHeight != this.mPageHeight) {
            z = true;
        }
        boolean z3 = z | z2;
        if (z3) {
            this.mDistributeTiles = true;
            requestLayout();
        }
        return z3;
    }
}
