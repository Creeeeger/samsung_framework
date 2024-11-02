package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.Dependency;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTileView;
import com.android.systemui.qs.SecQSPanelControllerBase;
import com.android.systemui.qs.SecTileLayout;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.IntSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecHeaderTileLayout extends TileLayout {
    public final Rect mClippingBounds;
    public final Context mContext;

    public SecHeaderTileLayout(Context context) {
        super(context);
        this.mClippingBounds = new Rect();
        this.mContext = context;
        setClipChildren(false);
        setClipToPadding(false);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 1;
        ((SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class)).getClass();
        layoutParams.bottomMargin = SecQSPanelResourcePicker.getQuickQSCommonBottomMargin(context);
        setLayoutParams(layoutParams);
        updateResources();
        setTag("open_anim");
    }

    @Override // com.android.systemui.qs.TileLayout
    public final void addTileView(SecQSPanelControllerBase.TileRecord tileRecord) {
        addView(tileRecord.tileView, getChildCount(), new ViewGroup.LayoutParams(this.mCellWidth, this.mCellHeight));
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateResources();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        updateResources();
    }

    @Override // com.android.systemui.qs.TileLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int min;
        boolean z2;
        boolean z3;
        int i5;
        this.mClippingBounds.set(0, 0, i3 - i, 10000);
        setClipBounds(this.mClippingBounds);
        int size = this.mRecords.size();
        if (size == 0) {
            this.mColumns = 0;
        } else {
            int measuredWidth = getMeasuredWidth() - (this.mSidePadding * 2);
            int i6 = this.mCellWidth;
            int i7 = measuredWidth - (size * i6);
            if (i7 > 0) {
                this.mCellMarginHorizontal = i7 / Math.max(1, size - 1);
                this.mColumns = size;
            } else {
                if (i6 == 0) {
                    min = 1;
                } else {
                    min = Math.min(size, measuredWidth / i6);
                }
                this.mColumns = min;
                if (min != 0) {
                    if (min == 1) {
                        this.mCellMarginHorizontal = (measuredWidth - this.mCellWidth) / 2;
                    } else {
                        this.mCellMarginHorizontal = (measuredWidth - (this.mCellWidth * min)) / min;
                    }
                }
            }
        }
        int i8 = 0;
        while (true) {
            int i9 = 8;
            if (i8 >= this.mRecords.size()) {
                break;
            }
            QSTileView qSTileView = ((SecQSPanelControllerBase.TileRecord) this.mRecords.get(i8)).tileView;
            if (i8 < this.mColumns) {
                i9 = 0;
            }
            qSTileView.setVisibility(i9);
            i8++;
        }
        ArrayList arrayList = this.mRecords;
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = this.mRecords.iterator();
            View view = this;
            while (it.hasNext()) {
                SecQSPanelControllerBase.TileRecord tileRecord = (SecQSPanelControllerBase.TileRecord) it.next();
                if (tileRecord.tileView.getVisibility() != 8) {
                    view = tileRecord.tileView.updateAccessibilityOrder(view);
                }
            }
        }
        SecTileLayout secTileLayout = this.mSecTileLayout;
        int i10 = this.mColumns;
        int asInt = secTileLayout.columnsSupplier.getAsInt();
        int asInt2 = secTileLayout.rowsSupplier.getAsInt() * asInt;
        if (i10 > asInt2) {
            i10 = asInt2;
        }
        SecTileLayout.Counter counter = new SecTileLayout.Counter(i10, asInt);
        if (secTileLayout.getLayoutDirectionSupplier.getAsInt() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        IntSupplier intSupplier = secTileLayout.cellWidthSupplier;
        int asInt3 = intSupplier.getAsInt();
        int asInt4 = secTileLayout.cellHeightSupplier.getAsInt();
        while (true) {
            if (counter.index < counter.indices) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                if (z2) {
                    i5 = (asInt - counter.column) - 1;
                } else {
                    i5 = counter.column;
                }
                int asInt5 = secTileLayout.sidePaddingSupplier.getAsInt() + ((secTileLayout.cellMarginHorizontalSupplier.getAsInt() + intSupplier.getAsInt()) * i5);
                Integer num = (Integer) secTileLayout.getRowTopFunction.apply(counter.row);
                ((SecQSPanelControllerBase.TileRecord) secTileLayout.records.get(counter.index)).tileView.layout(asInt5, num.intValue(), asInt3 + asInt5, num.intValue() + asInt4);
                counter.index++;
                int i11 = counter.column + 1;
                counter.column = i11;
                if (i11 == counter.columns) {
                    counter.column = 0;
                    counter.row++;
                }
            } else {
                return;
            }
        }
    }

    @Override // com.android.systemui.qs.TileLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        Iterator it = this.mRecords.iterator();
        while (it.hasNext()) {
            SecQSPanelControllerBase.TileRecord tileRecord = (SecQSPanelControllerBase.TileRecord) it.next();
            if (tileRecord.tileView.getVisibility() != 8) {
                tileRecord.tileView.measure(View.MeasureSpec.makeMeasureSpec(this.mCellWidth, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), View.MeasureSpec.makeMeasureSpec(this.mCellHeight, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS));
            }
        }
        int i3 = this.mCellHeight;
        if (i3 < 0) {
            i3 = 0;
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), i3);
    }

    @Override // com.android.systemui.qs.TileLayout, com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final void setListening(boolean z, UiEventLogger uiEventLogger) {
        boolean z2;
        if (!this.mListening && z) {
            z2 = true;
        } else {
            z2 = false;
        }
        super.setListening(z, uiEventLogger);
        if (z2) {
            for (int i = 0; i < Math.min(this.mRecords.size(), this.mColumns); i++) {
                QSTile qSTile = ((SecQSPanelControllerBase.TileRecord) this.mRecords.get(i)).tile;
                uiEventLogger.logWithInstanceId(QSEvent.QQS_TILE_VISIBLE, 0, qSTile.getMetricsSpec(), qSTile.getInstanceId());
            }
        }
    }

    @Override // com.android.systemui.qs.TileLayout, com.android.systemui.qs.SecQSPanel.QSTileLayout
    public final boolean updateResources() {
        if (this.mContext != null) {
            SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            Context context = this.mContext;
            secQSPanelResourcePicker.getClass();
            this.mCellWidth = SecQSPanelResourcePicker.getTileIconSize(context);
            SecQSPanelResourcePicker secQSPanelResourcePicker2 = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            Context context2 = this.mContext;
            secQSPanelResourcePicker2.getClass();
            this.mCellHeight = SecQSPanelResourcePicker.getTileIconSize(context2);
            this.mCellMarginHorizontal = 0;
            SecQSPanelResourcePicker secQSPanelResourcePicker3 = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            Context context3 = this.mContext;
            secQSPanelResourcePicker3.getClass();
            this.mSidePadding = SecQSPanelResourcePicker.getPanelStartEndPadding(context3);
        }
        return false;
    }
}
