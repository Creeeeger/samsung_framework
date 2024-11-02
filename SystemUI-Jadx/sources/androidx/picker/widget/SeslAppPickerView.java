package androidx.picker.widget;

import android.content.Context;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.AttributeSet;
import androidx.picker.adapter.AbsAdapter;
import androidx.picker.adapter.AppPickerAdapter$OnBindListener;
import androidx.picker.adapter.HeaderFooterAdapter;
import androidx.picker.adapter.viewholder.PickerViewHolder;
import androidx.picker.common.log.LogTag;
import androidx.picker.controller.ViewDataController;
import androidx.picker.decorator.RecyclerViewCornerDecoration;
import androidx.picker.helper.FlowHelperKt;
import androidx.picker.loader.select.SelectStateLoader;
import androidx.picker.model.AppData;
import androidx.picker.model.AppInfo;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.AppSideViewData;
import androidx.picker.model.viewdata.ViewData;
import androidx.picker.repository.AppDataRepository;
import androidx.picker.widget.SeslAppPickerSelectLayout;
import androidx.recyclerview.widget.RecyclerView;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class SeslAppPickerView extends RecyclerView implements RecyclerView.RecyclerListener, AppPickerAdapter$OnBindListener, LogTag {
    public final AnonymousClass1 clearKeyboardListener;
    public DisposableHandle disposable;
    public HeaderFooterAdapter mAdapter;
    public final AppDataRepository mAppDataRepository;
    public final Context mContext;
    public SeslAppPickerSelectLayout$$ExternalSyntheticLambda2 mOnClickEventListener;
    public SeslAppPickerSelectLayout.AnonymousClass5 mOnStateChangeListener;
    public final SelectStateLoader mSelectStateLoader;
    public final int mSeslRoundedCorner;
    public final ViewDataController mViewDataController;
    public int mViewType;
    public final AnonymousClass2 scrollListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.picker.widget.SeslAppPickerView$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 {
        public AnonymousClass3() {
        }
    }

    public SeslAppPickerView(Context context) {
        this(context, null);
    }

    public final void clearItemDecoration() {
        while (this.mItemDecorations.size() > 0) {
            int size = this.mItemDecorations.size();
            if (size > 0) {
                int size2 = this.mItemDecorations.size();
                if (size2 > 0) {
                    removeItemDecoration((RecyclerView.ItemDecoration) this.mItemDecorations.get(0));
                } else {
                    throw new IndexOutOfBoundsException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("0 is an invalid index for size ", size2));
                }
            } else {
                throw new IndexOutOfBoundsException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("0 is an invalid index for size ", size));
            }
        }
    }

    public final AppData getAppData(AppInfo appInfo) {
        ViewData viewData = this.mViewDataController.getViewData(appInfo);
        if (viewData instanceof AppSideViewData) {
            if (viewData instanceof AppInfoViewData) {
                AppInfoViewData appInfoViewData = (AppInfoViewData) viewData;
                if (appInfoViewData.appInfoData.getIcon() == null) {
                    FlowHelperKt.loadIconSync(appInfoViewData.iconFlow);
                }
            }
            return ((AppSideViewData) viewData).getAppData();
        }
        return null;
    }

    public abstract AbsAdapter getAppPickerAdapter();

    public abstract RecyclerView.LayoutManager getLayoutManager();

    public String getLogTag() {
        return "SeslAppPickerView";
    }

    public final void initialize() {
        HeaderFooterAdapter headerFooterAdapter = new HeaderFooterAdapter(getAppPickerAdapter());
        this.mAdapter = headerFooterAdapter;
        setItemDecoration(this.mViewType, headerFooterAdapter);
        setLayoutManager(getLayoutManager());
        setAdapter(this.mAdapter);
        this.mAdapter.wrappedAdapter.mOnBindListener = this;
        seslSetGoToTopEnabled(true);
        seslSetFastScrollerEnabled(true);
        seslSetFillBottomEnabled(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        addOnScrollListener(this.scrollListener);
        addOnScrollListener(this.clearKeyboardListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        setAdapter(null);
        super.onDetachedFromWindow();
        removeOnScrollListener(this.scrollListener);
        removeOnScrollListener(this.clearKeyboardListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecyclerListener
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        ((PickerViewHolder) viewHolder).onViewRecycled();
    }

    public void setItemDecoration(int i, HeaderFooterAdapter headerFooterAdapter) {
        clearItemDecoration();
        addItemDecoration(new RecyclerViewCornerDecoration(this.mContext, this.mSeslRoundedCorner));
    }

    public SeslAppPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(5:2|3|4|5|6)|(3:7|8|9)|10|(2:23|24)|12|13|14|15|16|17|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00d7, code lost:
    
        r8 = new androidx.picker.controller.strategy.AppItemStrategy(r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.picker.widget.SeslAppPickerView$1] */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.picker.widget.SeslAppPickerView$2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SeslAppPickerView(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.widget.SeslAppPickerView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
